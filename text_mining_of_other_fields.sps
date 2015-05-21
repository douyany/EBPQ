define checkcounty (!pos !charend('/'))

!do !i !in (!1)

/* want to check that observations are available across the counties */
temporary.
select if (len(!i)>0).
FREQ VARS=CountyCode.
!doend.
!enddefine.

set mprint on.
checkcounty OthersQ3_10_TEXT OthersQ8 
 OthersQ10_5_TEXT
  OthersQ13 OthersQ18_10_TEXT anyChWel_Other
  anyCommRes_Other anyConcrete_Other anyMHDAID_Other
  OthersQ33 /.
  
/* checking responses on the text questions for other */  
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

temporary.
select if countycode=6.
list variables VenQ13_7_TEXT_1
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
 
* the string variables .

FREQ VARS=VenQ19_7_TEXT_1
 VenQ19_7_TEXT_2
 VenQ19_7_TEXT_3
 VenQ19_7_TEXT_4
 VenQ19_7_TEXT_5
 VenQ19_7_TEXT_6.

* the string variables .

FREQ VARS=VenQ22_7_TEXT_1
 VenQ22_7_TEXT_2
 VenQ22_7_TEXT_3
 VenQ22_7_TEXT_4
 VenQ22_7_TEXT_5.


/* what sorts of things did people write in their responses */ 
/* for the other field? */

FREQ VARS= OthersQ3_10_TEXT OthersQ8 
 OthersQ10_5_TEXT
  OthersQ13 OthersQ18_10_TEXT anyChWel_Other
  anyCommRes_Other anyConcrete_Other anyMHDAID_Other
  OthersQ33 .
