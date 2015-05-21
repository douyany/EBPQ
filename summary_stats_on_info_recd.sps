/* some summary statistics about the EBPQ responses */

/* WHETHER any training */

CROSSTABS
 /TABLES=CountyCode by OthersQ2 
 /cells=row count.
DESCriptives variables OthersQ2.

 /* number of hours of training */
 /* variable is a string */
* DESCRIPTIVES VARIABLES OthersQ4.
FREQ VARS=OthersQ4.
 
 /* WHETHER any info abt EBP's */

CROSSTABS
 /TABLES=CountyCode by OthersQ9 
 /cells=row count.

 /* WHETHER currently carry caseload */

CROSSTABS
 /TABLES=CountyCode by OthersQ14 
 /cells=row count.
 
 
/* whether particular EBP's are available in the community */
/* Triple P */

CROSSTABS
 /TABLES=CountyCode by OthersQ11_x1
 /cells=row count.
 
 
/* whether particular EBP's are available in the community */
/* PCIT */

CROSSTABS
 /TABLES=CountyCode by OthersQ11_x3
 /cells=row count.

 /* the other EBP's not yet asked */

sort cases by CountyCode.
split file by CountyCode.
descriptives variables OthersQ11_x1  OthersQ11_x2 OthersQ11_x3 
 OthersQ11_x4 
 OthersQ11_x5 
 OthersQ11_x6 
 OthersQ11_x7 
 OthersQ11_x8 
 OthersQ11_x9 
 OthersQ11_x10 
 OthersQ11_x11 .
/* does any of them have a large enough number among multiple counties */
/* to justify going into the dotplot? */ 
split file off.

/* tf-cbt and mst are over 65% */
CROSSTABS
 /TABLES=CountyCode by OthersQ11_x10
 /cells=row count.

CROSSTABS
 /TABLES=CountyCode by OthersQ11_x8
 /cells=row count.
 
 
/* feelings about caseload */ 

CROSSTABS
 /TABLES=CountyCode by OthersQ17
 /cells=row count.

/* is the caseload in children or is it in families */


 sort cases by CountyCode.
split file by CountyCode.
descriptives variables=OthersQ15 OthersQ16.

split file off.

CROSSTABS
 /TABLES=OthersQ15  by OthersQ16
 /cells=count.

 
CROSSTABS
 /TABLES=OthersQ17  by OthersQ16
 /cells=ROW count.

 /* how do people learn of referrals */

 descriptives variables=OthersQ18_1
 OthersQ18_2
 OthersQ18_3
 OthersQ18_4
 OthersQ18_5
 OthersQ18_6
 OthersQ18_7
 OthersQ18_8
 OthersQ18_9
 OthersQ18_10.
 
 sort cases by CountyCode.
split file by CountyCode.
 descriptives variables=OthersQ18_1
 OthersQ18_2
 OthersQ18_3
 OthersQ18_4
 OthersQ18_5
 OthersQ18_6
 OthersQ18_7
 OthersQ18_8
 OthersQ18_9
 OthersQ18_10.


split file off.

/* how long to make referral */ 
 sort cases by CountyCode.
split file by CountyCode.
 descriptives variables=OthersQ31
 OthersQ32.


split file off.

/* ease of making referral */ 
 sort cases by CountyCode.
split file by CountyCode.
 descriptives variables=OthersQ20_1 OthersQ20_2 OthersQ23_1 OthersQ23_2 OthersQ26_1 
   OthersQ26_2 OthersQ29_1 OthersQ29_2.


split file off.


/* what kind of topics covered in training received */ 
 sort cases by CountyCode.
split file by CountyCode.
 descriptives variables=OthersQ3_1 OthersQ3_2 OthersQ3_3 OthersQ3_4 OthersQ3_5 
  OthersQ3_6 OthersQ3_7 OthersQ3_8 OthersQ3_9 OthersQ3_10. 
split file off.

/* why not make referral to particular types of services */ 
 sort cases by CountyCode.
split file by CountyCode.
 descriptives variables=anyChWel_1
anyCommRes_1
 anyConcrete_1
 anyMHDAID_1
 anyChWel_2
 anyCommRes_2
 anyConcrete_2
 anyMHDAID_2
 anyChWel_3
 anyCommRes_3
 anyConcrete_3
 anyMHDAID_3
 anyChWel_4
 anyCommRes_4
 anyConcrete_4
 anyMHDAID_4
 anyChWel_5
 anyCommRes_5
 anyConcrete_5
 anyMHDAID_5
 anyChWel_6
 anyCommRes_6
 anyConcrete_6
 anyMHDAID_6
 anyChWel_7
 anyCommRes_7
 anyConcrete_7
 anyMHDAID_7
 .
 

split file off.



/* all the dummy variables */
 sort cases by CountyCode.
split file by CountyCode.
 descriptives variables=OthersQ10_1
 OthersQ10_2
 OthersQ10_3
 OthersQ10_4
 OthersQ10_5
 OthersQ11_x1
 OthersQ11_x10
 OthersQ11_x11
 OthersQ11_x12
 OthersQ11_x13
 OthersQ11_x2
 OthersQ11_x3
 OthersQ11_x4
 OthersQ11_x5
 OthersQ11_x6
 OthersQ11_x7
 OthersQ11_x8
 OthersQ11_x9
 OthersQ12
 OthersQ14
 OthersQ18_1
 OthersQ18_10
 OthersQ18_2
 OthersQ18_3
 OthersQ18_4
 OthersQ18_5
 OthersQ18_6
 OthersQ18_7
 OthersQ18_8
 OthersQ18_9
 OthersQ2
 OthersQ21_1
 OthersQ21_2
 OthersQ21_3
 OthersQ21_4
 OthersQ21_5
 OthersQ21_6
 OthersQ21_7
 OthersQ24_1
 OthersQ24_2
 OthersQ24_3
 OthersQ24_4
 OthersQ24_5
 OthersQ24_6
 OthersQ24_7
 OthersQ27_1
 OthersQ27_2
 OthersQ27_3
 OthersQ27_4
 OthersQ27_5
 OthersQ27_6
 OthersQ27_7
 OthersQ3_1
 OthersQ3_10
 OthersQ3_2
 OthersQ3_3
 OthersQ3_4
 OthersQ3_5
 OthersQ3_6
 OthersQ3_7
 OthersQ3_8
 OthersQ3_9
 OthersQ30_1
 OthersQ30_2
 OthersQ30_3
 OthersQ30_4
 OthersQ30_5
 OthersQ30_6
 OthersQ30_7
 OthersQ9.
 
 
 split file off.
 
/* all the ordinal variables or non-zero/one dummy variables */ 
freq vars=OthersQ15
 OthersQ16
 OthersQ17
 OthersQ19_1
 OthersQ19_10
 OthersQ19_11
 OthersQ19_12
 OthersQ19_13
 OthersQ19_2
 OthersQ19_3
 OthersQ19_4
 OthersQ19_5
 OthersQ19_6
 OthersQ19_7
 OthersQ19_8
 OthersQ19_9
 OthersQ20_1
 OthersQ20_2
 OthersQ22_1
 OthersQ22_10
 OthersQ22_11
 OthersQ22_2
 OthersQ22_3
 OthersQ22_4
 OthersQ22_5
 OthersQ22_6
 OthersQ22_7
 OthersQ22_8
 OthersQ22_9
 OthersQ23_1
 OthersQ23_2
 OthersQ25_1
 OthersQ25_2
 OthersQ25_3
 OthersQ25_4
 OthersQ25_5
 OthersQ25_6
 OthersQ26_1
 OthersQ26_2
 OthersQ28_1
 OthersQ28_2
 OthersQ28_3
 OthersQ28_4
 OthersQ28_5
 OthersQ29_1
 OthersQ29_2
 OthersQ31
 OthersQ32
 OthersQ34_1
 OthersQ34_10
 OthersQ34_11
 OthersQ34_12
 OthersQ34_13
 OthersQ34_2
 OthersQ34_3
 OthersQ34_4
 OthersQ34_5
 OthersQ34_6
 OthersQ34_7
 OthersQ34_8
 OthersQ34_9
 OthersQ4
 OthersQ5_1
 OthersQ5_2
 OthersQ5_3
 OthersQ5_4
 OthersQ6_1
 OthersQ6_2
 OthersQ6_3
 OthersQ6_4
 OthersQ6_5
 OthersQ6_6
 OthersQ6_7
 OthersQ6_8
 OthersQ7_1
 OthersQ7_2
 OthersQ7_3
 OthersQ7_4
 OthersQ7_5
 OthersQ7_6
 OthersQ7_7.
 
 
 
/* why would the correlation between Divergence */
/* and Openness be positive? */
/* checking the results */

* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=EBPAS_Openness EBPAS_Divergence MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: EBPAS_Openness=col(source(s), name("EBPAS_Openness"))
  DATA: EBPAS_Divergence=col(source(s), name("EBPAS_Divergence"))
  GUIDE: axis(dim(1), label("EBPAS: Openness"))
  GUIDE: axis(dim(2), label("EBPAS: Divergence"))
  ELEMENT: point(position(EBPAS_Openness*EBPAS_Divergence))
END GPL.

/* breaking the Openness scores into quartiles */
 /* find percentile values for ORC Staff Attributes */
 /* to check the correlation between EBPAS Total */
 /* and staff attributes */
temporary.
select if sysmis(EBPAS_Divergence)=0.
FREQUENCIES VARIABLES=EBPAS_Openness
  /NTILES=4
  /ORDER=ANALYSIS.

 
/* create percentiles */
if (EBPAS_Openness<2) EBPAS_Opennessrpctile=1. 
if (EBPAS_Openness>=2 and EBPAS_Openness<2.5) EBPAS_Opennessrpctile=2. 
if (EBPAS_Openness>=2.5 and EBPAS_Openness<3) EBPAS_Opennessrpctile=3. 
if (EBPAS_Openness>=3) EBPAS_Opennessrpctile=4. 
if (sysmis(EBPAS_Divergence)) EBPAS_Opennessrpctile=$sysmis.

freq vars=EBPAS_Opennessrpctile.

formats EBPAS_Opennessrpctile (f9.0).
variable labels EBPAS_Opennessrpctile 'EBPAS: Openness Quartile'.
value labels EBPAS_Opennessrpctile 1 'Lowest' 2 '2nd' 3 '3rd' 4 'Highest'.


* Boxplot.
* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=EBPAS_Opennessrpctile EBPAS_Divergence OthersID CountyCode MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: EBPAS_Opennessrpctile=col(source(s), name("EBPAS_Opennessrpctile"), unit.category())
  DATA: EBPAS_Divergence=col(source(s), name("EBPAS_Divergence"))
  DATA: id=col(source(s), name("CountyCode"), unit.category())
  GUIDE: axis(dim(1), label("EBPAS Openness Quartile"))
  GUIDE: axis(dim(2), label("EBPAS: Divergence"))
   GUIDE: text.title(label("Boxplots: EBPAS Divergence Score by EBPAS Openness  Quartile"))
  SCALE: cat(dim(1), include("1", "2", "3", "4"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: schema(position(bin.quantile.letter(EBPAS_Opennessrpctile*EBPAS_Divergence)), label(id))
END GPL.

crosstabs
 /tables=EBPAS_Divergence by EBPAS_Opennessrpctile .


/* mark out the outliers */
compute notoutlier=1.
if (EBPAS_Opennessrpctile=1 and EBPAS_Divergence>2.25) notoutlier=0.
 
if (EBPAS_Opennessrpctile=4 and EBPAS_Divergence>=4) notoutlier=0.
freq vars=notoutlier.


CORRELATIONS
  /VARIABLES=EBPAS_Openness EBPAS_Divergence 
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

/* with outliers removed */
temporary.
select if (notoutlier=1).
  CORRELATIONS
  /VARIABLES=EBPAS_Openness EBPAS_Divergence 
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

/* who is above the (negative one) slope curve */
if (sysmis(EBPAS_Divergence)=0 and sysmis(EBPAS_Openness)=0) unexpected=0.
if ((EBPAS_Divergence-(4-EBPAS_Openness))>0) unexpected=1.

variable labels unexpected 'Whether More Divergent than Expected'.
value labels unexpected 0 'At Expectation' 1 'More Divergent'.

/* who is above the (negative one) slope curve */
if (sysmis(EBPAS_Divergence)=0 and sysmis(EBPAS_Openness)=0) unexpected=0.
if ((EBPAS_Divergence-(4-EBPAS_Openness))>0) unexpected=1.
EXECUTE.

/* scatterplot for Divergence-ness */
* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=EBPAS_Openness EBPAS_Divergence unexpected MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: EBPAS_Openness=col(source(s), name("EBPAS_Openness"))
  DATA: EBPAS_Divergence=col(source(s), name("EBPAS_Divergence"))
  DATA: unexpected=col(source(s), name("unexpected"), unit.category())
  GUIDE: axis(dim(1), label("EBPAS: Openness"))
  GUIDE: axis(dim(2), label("EBPAS: Divergence"))
  GUIDE: legend(aesthetic(aesthetic.color.exterior), label("Whether More Divergent than Expected"))
  ELEMENT: point(position(EBPAS_Openness*EBPAS_Divergence), color.exterior(unexpected))
END GPL.



/* looking at divergence-ness by county */
crosstabs
 /tables=CountyCode by unexpected
 /cells=count row.
 
/* what sorts of entries for the definition of EBP */
/* split by county */
 sort cases by CountyCode.
split file by CountyCode.
freq vars=OthersQ8.
split file off.

/* how frequently refer to specific EBP */
/* split by county */

sort cases by CountyCode.
split file by CountyCode. 
freq vars=OthersQ34_1
OthersQ34_2
OthersQ34_3
OthersQ34_4
OthersQ34_5
OthersQ34_6
OthersQ34_7
OthersQ34_8
OthersQ34_9
OthersQ34_10
OthersQ34_11
OthersQ34_12
OthersQ34_13.

split file off.
