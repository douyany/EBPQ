/* pulling together response rates between the two surveys */

/* First Three Waves of ORC */
add files file='H:\prep_orc\orc_sorted_oct31.sav'
 file='H:\prep_orc\orc_sorted_dauphin.sav'
 file='H:\prep_orc\orc_sorted_philly.sav'
 /keep=UserID CountyID .
 
sort cases by CountyID UserID.
freq vars=UserID.
rename variables (UserID=OthersID).
*string OthersID (A6).
*compute OthersID=ltrim(rtrim(UserID)).
*compute lengthOth=length(OthersID).
*freq vars=lengthOth.

recode CountyID (2=1) (22=3) (35=4) (51=5) (61=6) into CountyCode.
*Alter Type OthersID (A6).

/* check to see whether any repeats */
compute countofvar=1.
if (OthersID=lag(OthersID) and CountyCode=lag(CountyCode)) countofvar=lag(countofvar)+1.

freq vars=countofvar.

compute maxofcount=countofvar.
sort cases by CountyCode (A) OthersID (A) countofvar (D).
if (OthersID=lag(OthersID) and CountyCode=lag(CountyCode)) maxofcount=lag(maxofcount).

temporary.
select if countofvar=2.
list variables= CountyID OthersID countofvar maxofcount.

*temporary.
*select if ltrim(rtrim(OthersID))='86031'.
*list variables= CountyID OthersID countofvar maxofcount.

freq vars=maxofcount.

temporary.
select if (maxofcount>1).
list variables=CountyCode OthersID countofvar.

/* drop variables where length of OthersID is zero */
*if (length(OthersID)=0) countofvar=0.
if (sysmis(OthersID)) countofvar=0.

/* for purposes of counting responses  */
/* will get rid of the second responses for */
/* ID's 86031, 904, 924 */
select if countofvar=1.

compute answeredORC=1.

save outfile='h:\prep_ebpq\data_files\20150420_prepped_ORC_file.sav'
 /keep=CountyCode OthersID answeredORC.

/* prepping the EBPQ data */

include file='h:\prep_ebpq\do-files\prep_files_after_bringing_together.sps'.

Alter Type OthersID (F6.0).

sort cases by CountyCode OthersID. 


/* check to see whether any repeats */
compute countofvar=1.
if (OthersID=lag(OthersID) and CountyCode=lag(CountyCode)) countofvar=lag(countofvar)+1.

freq vars=countofvar.

compute maxofcount=countofvar.
sort cases by CountyCode (A) OthersID (A) countofvar (D).
if (OthersID=lag(OthersID) and CountyCode=lag(CountyCode)) maxofcount=lag(maxofcount).


freq vars=maxofcount.

temporary.
select if (maxofcount>1).
list variables=CountyCode OthersID countofvar.

/* drop variables where length of OthersID is zero */
*if (length(OthersID)=0) countofvar=0.
if (sysmis(OthersID)) countofvar=0.

/* for purposes of counting responses  */
/* where OthersID is blank */
/*  */
select if countofvar=1.

compute answeredEBPQ=1.
*compute OthersID=ltrim(rtrim(OthersID)).

match files
 /file='h:\prep_ebpq\data_files\20150420_prepped_ORC_file.sav'
 /file=*
   /by  CountyCode OthersID.
 
freq vars=answeredEBPQ. 

crosstabs
 /tables=answeredEBPQ by answeredORC.
 
*temporary.
*select if length(OthersID)=4.
*freq vars=inORC. 

*temporary.
*select if answeredORC=1.
*list vars=OthersID answeredEBPQ answeredORC. 

/* to put together the calculation */
/* of how many appear in both or only one */
if (sysmis(answeredEBPQ)) answeredEBPQ=0.

if (sysmis(answeredORC)) answeredORC=0.

variable labels answeredEBPQ 'Whether Responded EBPQ'.
variable labels answeredORC 'Whether Responded ORC'.

value labels answeredEBPQ 0 'Not in EBPQ' 1 'Yes in EBPQ'.
value labels answeredORC 0 'Not in ORC' 1 'Yes in ORC'.

crosstabs
 /tables=answeredEBPQ by answeredORC
 /CELLS=COUNT TOTAL.
 
/* DOUBLE-checking the matching between the datasets */
sort cases by CountyCode OthersID.
list variables  CountyCode OthersID answeredEBPQ answeredORC.

/* create variable about reasons for a non-match */
if (answeredEBPQ=1 and answeredORC=1) WhyNonMatch=0.


/* ID's in ORC by County */
/* 5000 to 5061 Allegh */
/* 8000 to 8011 Lacka */
/* 6081 to 7043 Ven */
/* 7016, 9000 to 9030 Dau */
/* 4000 to 4356 Phil */

if (CountyCode=1 and OthersID>=5000 and OthersID<=5061) WhyNonMatch=1.
if (CountyCode=3 and OthersID>=9000 and OthersID<=9030) WhyNonMatch=1.
if (CountyCode=3 and OthersID=7016) WhyNonMatch=1.
if (CountyCode=4 and OthersID>=8000 and OthersID<=8011) WhyNonMatch=1.
if (CountyCode=5 and OthersID>=4000 and OthersID<=4356) WhyNonMatch=1.
if (CountyCode=6 and OthersID>=6081 and OthersID<=7043) WhyNonMatch=1.

/* ID's in ORC by County */
/* 1 to 574 Allegh */
/* 575 to 681 Lacka */
/* 682 to 749 Ven */
/* 750 to 901 Dau */
/* 902 to 1101 Phil */

if (CountyCode=1 and sysmis(WhyNonMatch) and OthersID>=574) WhyNonMatch=2.
if (CountyCode=3 and sysmis(WhyNonMatch) and OthersID<575 and OthersID>681) WhyNonMatch=2.
if (CountyCode=4 and sysmis(WhyNonMatch) and OthersID<682 and OthersID>749) WhyNonMatch=2.
if (CountyCode=5 and sysmis(WhyNonMatch) and OthersID<750 and OthersID>901) WhyNonMatch=2.
if (CountyCode=6 and sysmis(WhyNonMatch) and OthersID<902 and OthersID>1101) WhyNonMatch=2.

if (sysmis(WhyNonMatch) and answeredEBPQ=0 and answeredORC=1) WhyNonMatch=3.
if (sysmis(WhyNonMatch) and answeredEBPQ=1 and answeredORC=0) WhyNonMatch=4.

freq vars=WhyNonMatch.


/* explain why a non-match */
variable labels WhyNonMatch 'Why Not a Match bet. ORC and EBPQ response'.
value labels WhyNonMatch 0 'Yes a Match in both ORC and EBPQ'
	1 'New Employee'
	2 'Incorrect ID in ORC'
	3 'Answered ORC and not EBPQ'
	4 'Answered EBPQ and not ORC'.

	
temporary.
select if sysmis(WhyNonMatch).
list variables  CountyCode OthersID answeredEBPQ answeredORC.
	