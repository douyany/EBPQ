/* this bit of code creates the */
/* Aarons's measures */
/* EBPAS */

/* put together the Aarons subscales */
/* for subscales, higher is "better" OTHER THAN */
/* divergence (lower is less divergent) */

/* after looking over how people responded to the questions */
/* decided to require that people answer all the questions */
/* in a subscale to have a response for that subscale */

missing values OthersQ6_1,
 OthersQ6_2,
 OthersQ6_3,
 OthersQ6_4,
 OthersQ6_5,
 OthersQ6_6,
 OthersQ6_7,
 OthersQ6_8,
 OthersQ7_1,
 OthersQ7_2,
 OthersQ7_3,
 OthersQ7_4,
 OthersQ7_5,
 OthersQ7_6,
 OthersQ7_7 (-99).


 
/* Subscale #1 */
/* extent to which the provider would adopt an EBP */
/* if it were required by an agency, supervisor, or state */
compute EBPAS_Requirements=mean.3(OthersQ7_3, OthersQ7_4, OthersQ7_5).
COUNT Req_Miss=OthersQ7_3, OthersQ7_4, OthersQ7_5(MISSING).

variable labels EBPAS_Requirements 'EBPAS: Requirements'.
variable labels Req_Miss 'Number Missing: EBPAS Requirements (out of 3)'.
formats Req_Miss (F2.0).

FREQ VARS=EBPAS_Requirements Req_Miss.

temporary.
select if EBPAS_Requirements=0.
list variables OthersQ7_3 OthersQ7_4 OthersQ7_5.
/* all values are zero */

/* Subscale #2 */
/* extent to which the provider */
/* would adopt an EBP if it were intuitively appealing, */
/* could be used correctly, or was being used by colleagues */
/* who were happy with it. */
compute EBPAS_Appeal=mean.4(OthersQ7_1, OthersQ7_2, OthersQ7_6, OthersQ7_7).
COUNT Appeal_Miss=OthersQ7_1, OthersQ7_2, OthersQ7_6, OthersQ7_7(MISSING).

variable labels EBPAS_Appeal 'EBPAS: Appeal'.
variable labels Appeal_Miss 'Number Missing: EBPAS Appeal (out of 4)'.
formats Appeal_Miss (F2.0).

FREQ VARS=EBPAS_Appeal Appeal_Miss.

/* Subscale #3 */
/*  extent to which the provider */
/* is generally open to trying new interventions and */
/* would be willing to try or use more structured or manualized */
/* interventions */
compute EBPAS_Openness=mean.4(OthersQ6_1, OthersQ6_2, OthersQ6_4, OthersQ6_8).
COUNT Openness_Miss=OthersQ6_1, OthersQ6_2, OthersQ6_4, OthersQ6_8(MISSING).

variable labels EBPAS_Openness 'EBPAS: Openness'.
variable labels Openness_Miss 'Number Missing: EBPAS Openness (out of 4)'.
formats Openness_Miss (F2.0).

FREQ VARS=EBPAS_Openness Openness_Miss.

/* Subscale #4 */
/* extent to which the provider perceives EBPs as not clinically */
/* useful and less important than clinical experience */
compute EBPAS_Divergence=mean.4(OthersQ6_3, OthersQ6_5, OthersQ6_6, OthersQ6_7).
COUNT Divergence_Miss=OthersQ6_3, OthersQ6_5, OthersQ6_6, OthersQ6_7(MISSING).

variable labels EBPAS_Divergence 'EBPAS: Divergence'.
variable labels Divergence_Miss 'Number Missing: EBPAS Divergence (out of 4)'.
formats Divergence_Miss (F2.0).

FREQ VARS=EBPAS_Divergence Divergence_Miss.

 /* Total Scale */
/* reverse the variables in the Divergence scale */ 

compute revOthersQ6_3=4-OthersQ6_3.
CROSSTABS
 /TABLES=revOthersQ6_3 by OthersQ6_3.
 
compute revOthersQ6_5=4-OthersQ6_5.
compute revOthersQ6_6=4-OthersQ6_6.
compute revOthersQ6_7=4-OthersQ6_7.


/* Need to have responses to each of the four subscales */
if (sysmis(EBPAS_Requirements)=0 and 
 SYSMIS(EBPAS_Appeal)=0 AND
 SYSMIS(EBPAS_Divergence)=0 AND
 SYSMIS(EBPAS_Openness)=0)
 EBPAS_Total=mean.4(OthersQ6_1,
 OthersQ6_2,
 revOthersQ6_3,
 OthersQ6_4,
 revOthersQ6_5,
 revOthersQ6_6,
 revOthersQ6_7,
 OthersQ6_8,
 OthersQ7_1,
 OthersQ7_2,
 OthersQ7_3,
 OthersQ7_4,
 OthersQ7_5,
 OthersQ7_6,
 OthersQ7_7).

COUNT EBPASTotal_Miss=OthersQ6_1,
	 OthersQ6_2,
 revOthersQ6_3,
 OthersQ6_4,
 revOthersQ6_5,
 revOthersQ6_6,
 revOthersQ6_7,
 OthersQ6_8,
 OthersQ7_1,
 OthersQ7_2,
 OthersQ7_3,
 OthersQ7_4,
 OthersQ7_5,
 OthersQ7_6,
 OthersQ7_7(MISSING). 

variable labels EBPAS_Total 'EBPAS: Total'.
variable labels EBPASTotal_Miss 'Number Missing: EBPAS Total (out of 15)'.
formats EBPASTotal_Miss (F2.0).
 
FREQ VARS=EBPAS_Total EBPASTotal_Miss. 



sort cases by CountyCode.
split file by CountyCode.
descriptives variables=EBPAS_Requirements EBPAS_Appeal EBPAS_Openness
 EBPAS_Divergence EBPAS_Total.

split file off.

sort cases by CountyCode.
split file by CountyCode.
descriptives variables=Req_Miss Appeal_Miss Openness_Miss Divergence_Miss EBPASTotal_Miss.
freq vars=Req_Miss Appeal_Miss Openness_Miss Divergence_Miss EBPASTotal_Miss.
split file off.

/* numbers for the state as a whole */
descriptives variables=EBPAS_Requirements EBPAS_Appeal EBPAS_Openness
 EBPAS_Divergence EBPAS_Total.
