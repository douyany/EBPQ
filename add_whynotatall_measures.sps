/* comparing results where Venango has multiple questions */
/* compared to one question in the other counties */

/* create values for having said "yes" to any reason */
/* why not using resource */
 
/* for these questions on the Venango EBPQ */
/* offer seven options for why not referring to them */
/* #13 (EQUAL TO #21 in the other counties) */ 
	/* said not at all to one of #11 (equal to #19 in the other counties */
	/* asks about 13 types of resources */
/* #16 (EQUAL TO #24 in the other counties) */ 
	/* said not at all to one of #14 (equal to #22 in the other counties */
	/* asks about 11 types of resources */	
/* #19 (EQUAL TO #27 in the other counties) */ 
	/* said not at all to one of #17 (equal to #27 in the other counties */
	/* asks about 6 types of resources */	
/* #22 (EQUAL TO #30 in the other counties) */ 
	/* said not at all to one of #20 (equal to #28 in the other counties */
	/* asks about 5 types of resources */	

/* check descriptive statistics */
/* create variable if any of the questions are answered positively */

DEFINE Question13 (VenQNum=!tokens(1) ).

!let !descr=!concat('VenQ13_', !VenQNum, '_1 ',
 'VenQ13_', !VenQNum, '_2 ',
 'VenQ13_', !VenQNum, '_3 ',
 'VenQ13_', !VenQNum, '_4 ',
 'VenQ13_', !VenQNum, '_5 ',
 'VenQ13_', !VenQNum, '_6 ',
 'VenQ13_', !VenQNum, '_7 ',
 'VenQ13_', !VenQNum, '_8 ',
 'VenQ13_', !VenQNum, '_9 ',
 'VenQ13_', !VenQNum, '_10 ',
 'VenQ13_', !VenQNum, '_11 ',
 'VenQ13_', !VenQNum, '_12 ',
 'VenQ13_', !VenQNum, '_13 ',
 'OthersQ21_', !VenQNum)
 
!let !anyVen= !concat('VenQ13_', !VenQNum, '_1, ',
 'VenQ13_', !VenQNum, '_2, ',
 'VenQ13_', !VenQNum, '_3, ',
 'VenQ13_', !VenQNum, '_4, ',
 'VenQ13_', !VenQNum, '_5, ',
 'VenQ13_', !VenQNum, '_6, ',
 'VenQ13_', !VenQNum, '_7, ',
 'VenQ13_', !VenQNum, '_8, ',
 'VenQ13_', !VenQNum, '_9, ',
 'VenQ13_', !VenQNum, '_10, ',
 'VenQ13_', !VenQNum, '_11, ',
 'VenQ13_', !VenQNum, '_12, ',
 'VenQ13_', !VenQNum, '_13 ')

!let !settomissing= !concat('VenQ13_', !VenQNum, '_1, ',
 'VenQ13_', !VenQNum, '_2, ',
 'VenQ13_', !VenQNum, '_3, ',
 'VenQ13_', !VenQNum, '_4, ',
 'VenQ13_', !VenQNum, '_5, ',
 'VenQ13_', !VenQNum, '_6, ',
 'VenQ13_', !VenQNum, '_7, ',
 'VenQ13_', !VenQNum, '_8, ',
 'VenQ13_', !VenQNum, '_9, ',
 'VenQ13_', !VenQNum, '_10, ',
 'VenQ13_', !VenQNum, '_11, ',
 'VenQ13_', !VenQNum, '_12, ',
 'VenQ13_', !VenQNum, '_13 ',
 'OthersQ21_', !VenQNum)
 
!let !anySvc= !concat('OthersQ19_1, ',
 'OthersQ19_2, ',
 'OthersQ19_3, ',
 'OthersQ19_4, ',
 'OthersQ19_5, ',
 'OthersQ19_6, ',
 'OthersQ19_7, ',
 'OthersQ19_8, ',
 'OthersQ19_9, ',
 'OthersQ19_10, ',
 'OthersQ19_11, ',
 'OthersQ19_12, ',
 'OthersQ19_13 ')

 
!let !newvar=!concat('anyVenQ13_', !VenQNum) 
!let !numvar=!concat('Num_VenQ13_', !VenQNum) 
!let !othergroup=!concat('OthersQ21_', !VenQNum) 
!let !combinedvar=!concat('anyConcrete_', !VenQNum) 

/*set missing values */
/* so the frequencies was note that -99 is missing */
missing values !settomissing (-99).

descriptives variables !descr. 

/* any many yes responses among the variables? */
if (any(1, !anyVen)) !newvar=1.

/* how many yes responses among the variables */
COUNT !numvar=!anyVen(1).
freq vars=!numvar.
/* conditions are */
/* has a "not at all" for the questions about resources */
/* system missing for whether any "one's" is yes */
/* is carrying a caseload (OthersQ14) */
if (any(0, !anySvc) and SYSMIS(!newvar)=1 AND OthersQ14=1) !newvar=0.

/* set values to system-missing */
/* for people not eligible to be in count of number of no's */
/* otherwise, those people would have zero AND GET counted in the denominator*/
/* not eligible because does not carry caseload */
if (OthersQ14=0) !numvar=$SYSMIS.
/* did not answer question about caseload */
if (sysmis(OthersQ14)) !numvar=$SYSMIS.

/* not eligible because did not answer any services questions */
COUNT missing_OthersQ19=!anySvc(MISSING). 
if (missing_OthersQ19=13 & OthersQ14=1) !numvar=$sysmis.

/* not eligible because no "not at all" responses */
if (any(0, !anySvc)=0 AND OthersQ14=1) !numvar=$SYSMIS.
/* not eligible because county is not Venango */
if (CountyCode~=6) !numvar=$SYSMIS.
if (CountyCode~=6) !newvar=$SYSMIS.

/* create the new variable combining Venango and other counties' */
/* numbers for why not using a resource */
/* use the value out of the questionnaire in other counties */
COMPUTE !combinedvar=!othergroup.
if (CountyCode=6) !combinedvar=!newvar.



/* check descriptive variables side by side */
descriptives variables !newvar !numvar !othergroup.
!endDEFINE.

*if (any(1, VenQ13_1_1,
 VenQ13_1_2,
 VenQ13_1_3,
 VenQ13_1_4,
 VenQ13_1_5,
 VenQ13_1_6,
 VenQ13_1_7,
 VenQ13_1_8,
 VenQ13_1_9,
 VenQ13_1_10,
 VenQ13_1_11,
 VenQ13_1_12,
 VenQ13_1_13)) anyVenQ13_1=1.

set mprint on. 
Question13 VenQNum=1.
 

 
 
*descriptives variables=VenQ13_1_1
 VenQ13_1_2
 VenQ13_1_3
 VenQ13_1_4
 VenQ13_1_5
 VenQ13_1_6
 VenQ13_1_7
 VenQ13_1_8
 VenQ13_1_9
 VenQ13_1_10
 VenQ13_1_11
 VenQ13_1_12
 VenQ13_1_13
  OthersQ21_1.

/* 1 yes answer to #8 within #13_1 */  
temporary.
select if VenQ13_1_8=1.
list VenQ13_1_9 VenQ13_1_10.
/* values for 9 and 10 were missing */
/* it's not the same person with 8,9,10 all being 1 */

/* check out responses to concrete blocks */
temporary.
select if VenQ13_1_8=1.
list variables OthersQ19_1
 OthersQ19_2
 OthersQ19_3
 OthersQ19_4
 OthersQ19_5
 OthersQ19_6
 OthersQ19_7
 OthersQ19_8
 OthersQ19_9
 OthersQ19_10
 OthersQ19_11
 OthersQ19_12
 OthersQ19_13.

*if (any(1, VenQ13_1_1,
 VenQ13_1_2,
 VenQ13_1_3,
 VenQ13_1_4,
 VenQ13_1_5,
 VenQ13_1_6,
 VenQ13_1_7,
 VenQ13_1_8,
 VenQ13_1_9,
 VenQ13_1_10,
 VenQ13_1_11,
 VenQ13_1_12,
 VenQ13_1_13)) anyVenQ13_1=1.
 
/* re-checking the function */ 
temporary.
select if anyVenQ13_1=1.
list VenQ13_1_8 VenQ13_1_9 VenQ13_1_10.
 
descriptives variables=Num_VenQ13_1.

 
Question13 VenQNum=2. 
Question13 VenQNum=3. 
Question13 VenQNum=4. 
Question13 VenQNum=5. 
Question13 VenQNum=6. 
Question13 VenQNum=7. 


* the string variables .

FREQ VARS=VenQ13_7_TEXT_1
 VenQ13_7_TEXT_2
 VenQ13_7_TEXT_3
 VenQ13_7_TEXT_4
 VenQ13_7_TEXT_5
 VenQ13_7_TEXT_6
 VenQ13_7_TEXT_7
 VenQ13_7_TEXT_8
 VenQ13_7_TEXT_9
 VenQ13_7_TEXT_10
 VenQ13_7_TEXT_11
 VenQ13_7_TEXT_12
 VenQ13_7_TEXT_13.
 
/* Question #16 */
/* 11 questions per question */
 
DEFINE Question16 (VenQNum=!tokens(1) ).

!let !descr=!concat('VenQ16_', !VenQNum, '_1 ',
 'VenQ16_', !VenQNum, '_2 ',
 'VenQ16_', !VenQNum, '_3 ',
 'VenQ16_', !VenQNum, '_4 ',
 'VenQ16_', !VenQNum, '_5 ',
 'VenQ16_', !VenQNum, '_6 ',
 'VenQ16_', !VenQNum, '_7 ',
 'VenQ16_', !VenQNum, '_8 ',
 'VenQ16_', !VenQNum, '_9 ',
 'VenQ16_', !VenQNum, '_10 ',
 'VenQ16_', !VenQNum, '_11 ',
 'OthersQ24_', !VenQNum)
 
!let !anyVen= !concat('VenQ16_', !VenQNum, '_1, ',
 'VenQ16_', !VenQNum, '_2, ',
 'VenQ16_', !VenQNum, '_3, ',
 'VenQ16_', !VenQNum, '_4, ',
 'VenQ16_', !VenQNum, '_5, ',
 'VenQ16_', !VenQNum, '_6, ',
 'VenQ16_', !VenQNum, '_7, ',
 'VenQ16_', !VenQNum, '_8, ',
 'VenQ16_', !VenQNum, '_9, ',
 'VenQ16_', !VenQNum, '_10, ',
 'VenQ16_', !VenQNum, '_11 ')

 !let !settomissing= !concat('VenQ16_', !VenQNum, '_1, ',
 'VenQ16_', !VenQNum, '_2, ',
 'VenQ16_', !VenQNum, '_3, ',
 'VenQ16_', !VenQNum, '_4, ',
 'VenQ16_', !VenQNum, '_5, ',
 'VenQ16_', !VenQNum, '_6, ',
 'VenQ16_', !VenQNum, '_7, ',
 'VenQ16_', !VenQNum, '_8, ',
 'VenQ16_', !VenQNum, '_9, ',
 'VenQ16_', !VenQNum, '_10, ',
 'VenQ16_', !VenQNum, '_11, ',
  'OthersQ24_', !VenQNum)
 
!let !anySvc= !concat('OthersQ22_1, ',
 'OthersQ22_2, ',
 'OthersQ22_3, ',
 'OthersQ22_4, ',
 'OthersQ22_5, ',
 'OthersQ22_6, ',
 'OthersQ22_7, ',
 'OthersQ22_8, ',
 'OthersQ22_9, ',
 'OthersQ22_10, ',
 'OthersQ22_11 ')


!let !newvar=!concat('anyVenQ16_', !VenQNum) 
!let !numvar=!concat('Num_VenQ16_', !VenQNum) 
!let !othergroup=!concat('OthersQ24_', !VenQNum) 
!let !combinedvar=!concat('anyMHDAID_', !VenQNum) 

/*set missing values */
/* so the frequencies was note that -99 is missing */
missing values !settomissing (-99).

descriptives variables !descr. 
if (any(1, !anyVen)) !newvar=1.
COUNT !numvar=!anyVen(1).
freq vars=!numvar.

/* conditions are */
/* has a "not at all" for the questions about resources */
/* system missing for whether any "one's" is yes */
/* is carrying a caseload (OthersQ14) */
if (any(0, !anySvc) and SYSMIS(!newvar)=1 AND OthersQ14=1) !newvar=0.

/* set values to system-missing */
/* for people not eligible to be in count of number of no's */
/* otherwise, those people would have zero AND GET counted in the denominator*/
/* not eligible because does not carry caseload */
if (OthersQ14=0) !numvar=$SYSMIS.
/* did not answer question about caseload */
if (sysmis(OthersQ14)) !numvar=$SYSMIS.

/* not eligible because no "not at all" responses */
if (any(0, !anySvc)=0 AND OthersQ14=1) !numvar=$SYSMIS.

/* not eligible because did not answer any services questions */
COUNT missing_OthersQ22=!anySvc(MISSING). 
if (missing_OthersQ22=11 & OthersQ14=1) !numvar=$sysmis.

/* not eligible because county is not Venango */
if (CountyCode~=6) !numvar=$SYSMIS.
if (CountyCode~=6) !newvar=$SYSMIS.


/* create the new variable combining Venango and other counties' */
/* numbers for why not using a resource */
/* use the value out of the questionnaire in other counties */
COMPUTE !combinedvar=!othergroup.
if (CountyCode=6) !combinedvar=!newvar.


/* check descriptive variables side by side */
descriptives variables !newvar !numvar !othergroup.

!endDEFINE.
 
Question16 VenQNum=1. 
Question16 VenQNum=2. 
Question16 VenQNum=3. 
Question16 VenQNum=4. 
Question16 VenQNum=5. 
Question16 VenQNum=6. 
Question16 VenQNum=7. 


* the string variables .

FREQ VARS=VenQ16_7_TEXT_1
 VenQ16_7_TEXT_2
 VenQ16_7_TEXT_3
 VenQ16_7_TEXT_4
 VenQ16_7_TEXT_5
 VenQ16_7_TEXT_6
 VenQ16_7_TEXT_7
 VenQ16_7_TEXT_8
 VenQ16_7_TEXT_9
 VenQ16_7_TEXT_10
 VenQ16_7_TEXT_11.

 
 
 
 
 
 
 
 
 /* Question #19 */
/* 6 questions per question */
 
DEFINE Question19 (VenQNum=!tokens(1) ).

!let !descr=!concat('VenQ19_', !VenQNum, '_1 ',
 'VenQ19_', !VenQNum, '_2 ',
 'VenQ19_', !VenQNum, '_3 ',
 'VenQ19_', !VenQNum, '_4 ',
 'VenQ19_', !VenQNum, '_5 ',
 'VenQ19_', !VenQNum, '_6 ',
 'OthersQ27_', !VenQNum)
 
!let !anyVen= !concat('VenQ19_', !VenQNum, '_1, ',
 'VenQ19_', !VenQNum, '_2, ',
 'VenQ19_', !VenQNum, '_3, ',
 'VenQ19_', !VenQNum, '_4, ',
 'VenQ19_', !VenQNum, '_5, ',
 'VenQ19_', !VenQNum, '_6 ')

 !let !settomissing= !concat('VenQ19_', !VenQNum, '_1, ',
 'VenQ19_', !VenQNum, '_2, ',
 'VenQ19_', !VenQNum, '_3, ',
 'VenQ19_', !VenQNum, '_4, ',
 'VenQ19_', !VenQNum, '_5, ',
 'VenQ19_', !VenQNum, '_6, ',
 'OthersQ27_', !VenQNum)
 
!let !anySvc= !concat('OthersQ25_1, ',
 'OthersQ25_2, ',
 'OthersQ25_3, ',
 'OthersQ25_4, ',
 'OthersQ25_5, ',
 'OthersQ25_6 ')


!let !newvar=!concat('anyVenQ19_', !VenQNum) 

!let !numvar=!concat('Num_VenQ19_', !VenQNum) 
!let !othergroup=!concat('OthersQ27_', !VenQNum) 
!let !combinedvar=!concat('anyChWel_', !VenQNum) 

/*set missing values */
/* so the frequencies was note that -99 is missing */
missing values !settomissing (-99).

descriptives variables !descr. 
if (any(1, !anyVen)) !newvar=1.
COUNT !numvar=!anyVen(1).
freq vars=!numvar.

/* conditions are */
/* has a "not at all" for the questions about resources */
/* system missing for whether any "one's" is yes */
/* is carrying a caseload (OthersQ14) */
if (any(0, !anySvc) and SYSMIS(!newvar)=1 AND OthersQ14=1) !newvar=0.

/* set values to system-missing */
/* for people not eligible to be in count of number of no's */
/* otherwise, those people would have zero AND GET counted in the denominator*/
/* not eligible because does not carry caseload */
if (OthersQ14=0) !numvar=$SYSMIS.
/* did not answer question about caseload */
if (sysmis(OthersQ14)) !numvar=$SYSMIS.

/* not eligible because no "not at all" responses */
if (any(0, !anySvc)=0 AND OthersQ14=1) !numvar=$SYSMIS.

/* not eligible because did not answer any services questions */
COUNT missing_OthersQ25=!anySvc(MISSING). 
if (missing_OthersQ25=6 & OthersQ14=1) !numvar=$sysmis.

/* not eligible because county is not Venango */
if (CountyCode~=6) !numvar=$SYSMIS.
if (CountyCode~=6) !newvar=$SYSMIS.


/* create the new variable combining Venango and other counties' */
/* numbers for why not using a resource */
/* use the value out of the questionnaire in other counties */
COMPUTE !combinedvar=!othergroup.
if (CountyCode=6) !combinedvar=!newvar.


/* check descriptive variables side by side */
descriptives variables !newvar !numvar !othergroup.

!endDEFINE.
 
Question19 VenQNum=1. 
Question19 VenQNum=2. 
Question19 VenQNum=3. 
Question19 VenQNum=4. 
Question19 VenQNum=5. 
Question19 VenQNum=6. 
Question19 VenQNum=7. 


* the string variables .

FREQ VARS=VenQ19_7_TEXT_1
 VenQ19_7_TEXT_2
 VenQ19_7_TEXT_3
 VenQ19_7_TEXT_4
 VenQ19_7_TEXT_5
 VenQ19_7_TEXT_6.

 
 
 /* Question #22 */
/* 5 questions per question */
 
DEFINE Question22 (VenQNum=!tokens(1) ).

!let !descr=!concat('VenQ22_', !VenQNum, '_1 ',
 'VenQ22_', !VenQNum, '_2 ',
 'VenQ22_', !VenQNum, '_3 ',
 'VenQ22_', !VenQNum, '_4 ',
 'VenQ22_', !VenQNum, '_5 ',
 'OthersQ30_', !VenQNum)
 
!let !anyVen= !concat('VenQ22_', !VenQNum, '_1, ',
 'VenQ22_', !VenQNum, '_2, ',
 'VenQ22_', !VenQNum, '_3, ',
 'VenQ22_', !VenQNum, '_4, ',
 'VenQ22_', !VenQNum, '_5 ')

 !let !settomissing= !concat('VenQ22_', !VenQNum, '_1, ',
 'VenQ22_', !VenQNum, '_2, ',
 'VenQ22_', !VenQNum, '_3, ',
 'VenQ22_', !VenQNum, '_4, ',
 'VenQ22_', !VenQNum, '_5, ',
 'OthersQ30_', !VenQNum)
 
!let !anySvc= !concat('OthersQ28_1, ',
 'OthersQ28_2, ',
 'OthersQ28_3, ',
 'OthersQ28_4, ',
 'OthersQ28_5 ')


!let !newvar=!concat('anyVenQ22_', !VenQNum) 
!let !numvar=!concat('Num_VenQ22_', !VenQNum) 
!let !othergroup=!concat('OthersQ30_', !VenQNum) 
!let !combinedvar=!concat('anyCommRes_', !VenQNum) 

/*set missing values */
/* so the frequencies was note that -99 is missing */
missing values !settomissing (-99).

descriptives variables !descr. 
if (any(1, !anyVen)) !newvar=1.
COUNT !numvar=!anyVen(1).
freq vars=!numvar.

/* conditions are */
/* has a "not at all" for the questions about resources */
/* system missing for whether any "one's" is yes */
/* is carrying a caseload (OthersQ14) */
if (any(0, !anySvc) and SYSMIS(!newvar)=1 AND OthersQ14=1) !newvar=0.

/* set values to system-missing */
/* for people not eligible to be in count of number of no's */
/* otherwise, those people would have zero AND GET counted in the denominator*/
/* not eligible because does not carry caseload */
if (OthersQ14=0) !numvar=$SYSMIS.
/* did not answer question about caseload */
if (sysmis(OthersQ14)) !numvar=$SYSMIS.

/* not eligible because no "not at all" responses */
if (any(0, !anySvc)=0 AND OthersQ14=1) !numvar=$SYSMIS.

/* not eligible because did not answer any services questions */
COUNT missing_OthersQ28=!anySvc(MISSING). 
if (missing_OthersQ28=5 & OthersQ14=1) !numvar=$sysmis.


/* not eligible because county is not Venango */
if (CountyCode~=6) !numvar=$SYSMIS.
if (CountyCode~=6) !newvar=$SYSMIS.


/* create the new variable combining Venango and other counties' */
/* numbers for why not using a resource */
/* use the value out of the questionnaire in other counties */
COMPUTE !combinedvar=!othergroup.
if (CountyCode=6) !combinedvar=!newvar.


/* check descriptive variables side by side */
descriptives variables !newvar !numvar !othergroup.

!endDEFINE.
 
Question22 VenQNum=1. 
Question22 VenQNum=2. 
Question22 VenQNum=3. 
Question22 VenQNum=4. 
Question22 VenQNum=5. 
Question22 VenQNum=6. 
Question22 VenQNum=7. 


* the string variables .

FREQ VARS=VenQ22_7_TEXT_1
 VenQ22_7_TEXT_2
 VenQ22_7_TEXT_3
 VenQ22_7_TEXT_4
 VenQ22_7_TEXT_5.

DEFINE labellingvars (whichnum=!tokens(1) / whichdef=!tokens(1)).

!let !ChWelvar=!concat('anyChWel_', !whichnum) 
!let !Commvar=!concat('anyCommRes_', !whichnum) 
!let !Concvar=!concat('anyConcrete_', !whichnum) 
!let !MHDAvar=!concat('anyMHDAID_', !whichnum) 

!let !ChWellbl=!unquote(!concat('CW Resources: ', !unquote(!whichdef))) 
!let !Commlbl=!unquote(!concat('Comm. Resources: ', !unquote(!whichdef))) 
!let !Conclbl=!unquote(!concat('Concrete Resources: ', !unquote(!whichdef))) 
!let !MHDAlbl=!unquote(!concat('MH/DA/ID Resources: ', !unquote(!whichdef))) 


variable labels !ChWelvar !quote(!ChWellbl).
variable labels !Commvar !quote(!Commlbl).
variable labels !Concvar !quote(!Conclbl).
variable labels !MHDAvar !quote(!MHDAlbl).

!endDEFINE.

labellingvars whichnum=1 whichdef='Waiting lists'.
labellingvars whichnum=2 whichdef='Poor quality'.
labellingvars whichnum=3 whichdef='Don''t know how to make a referral'.
labellingvars whichnum=4 whichdef='Svc. unavailable'.
labellingvars whichnum=5 whichdef='Case does not meet requirements for svc.'.
labellingvars whichnum=6 whichdef='Lack proper forms to process referral'.
labellingvars whichnum=7 whichdef='Other reason'.

string anyChWel_Other (a255).
/* creating vars for "other" responses */
/* will use the non-Venango responses as the base */
compute anyChWel_Other=OthersQ27_7_TEXT.
/* ADD THE Venango responses from */
if (CountyCode=6) anyChWel_Other=concat(VenQ19_7_TEXT_1, 
 VenQ19_7_TEXT_2, 
 VenQ19_7_TEXT_3, 
 VenQ19_7_TEXT_4, 
 VenQ19_7_TEXT_5, 
 VenQ19_7_TEXT_6).

temporary.
select if (CountyCode=6).
freq vars=anyChWel_Other.
 
 
string anyCommRes_Other (a255).
compute anyCommRes_Other=OthersQ30_7_TEXT.
/* ADD THE Venango responses from */
if (CountyCode=6) anyCommRes_Other=concat(VenQ22_7_TEXT_1, 
 VenQ22_7_TEXT_2, 
 VenQ22_7_TEXT_3, 
 VenQ22_7_TEXT_4, 
 VenQ22_7_TEXT_5).

temporary.
select if (CountyCode=6).
freq vars=anyCommRes_Other.

string anyConcrete_Other (a255).
compute anyConcrete_Other=OthersQ21_7_TEXT.
/* ADD THE Venango responses from */
if (CountyCode=6) anyCommRes_Other=concat(VenQ13_7_TEXT_1, 
 VenQ13_7_TEXT_2, 
 VenQ13_7_TEXT_3, 
 VenQ13_7_TEXT_4, 
 VenQ13_7_TEXT_5,
 VenQ13_7_TEXT_6, 
 VenQ13_7_TEXT_7, 
 VenQ13_7_TEXT_8, 
 VenQ13_7_TEXT_9, VenQ13_7_TEXT_10, 
 VenQ13_7_TEXT_11, 
 VenQ13_7_TEXT_12, 
 VenQ13_7_TEXT_13).

string anyMHDAID_Other (a255).
compute anyMHDAID_Other=OthersQ24_7_TEXT.
/* ADD THE Venango responses from */
if (CountyCode=6) anyMHDAID_Other=concat(VenQ16_7_TEXT_1, 
 VenQ16_7_TEXT_2, 
 VenQ16_7_TEXT_3, 
 VenQ16_7_TEXT_4, 
 VenQ16_7_TEXT_5,
 VenQ16_7_TEXT_6, 
 VenQ16_7_TEXT_7, 
 VenQ16_7_TEXT_8, 
 VenQ16_7_TEXT_9, VenQ16_7_TEXT_10, 
 VenQ16_7_TEXT_11).

 
variable labels anyChWel_Other 'Responses to Other Field for CW Resources'.
variable labels anyCommRes_Other 'Responses to Other Field for Community Resources'.
variable labels anyConcrete_Other 'Responses to Other Field for Concrete Resources'.
variable labels anyMHDAID_Other 'Responses to Other Field for MH/DA/ID Resources'.