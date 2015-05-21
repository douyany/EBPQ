/* want to create panel graphs showing the number of observations */
/* for each type of response */

/* if someone says "not at all" */
/* how many reasons do they claim for why */
/* that person chose "not at all" */

/* will want to reshape data from wide to long */
/* Num_VenQ13_1 through Num_VenQ13_7 */
/* Num_VenQ16_1 through Num_VenQ16_7 */
/* Num_VenQ19_1 through Num_VenQ19_7 */
/* Num_VenQ22_1 through Num_VenQ22_7 */

/* only need the Venango observations */
/* for the histogram */
select if CountyCode=6.
freq vars=CountyCode.

/* get rid of most of the variables */
delete variables OthersV1 to OthersV10.
/* keep the ID variable between V10 and Q2 */
delete variables OthersQ2 to anyVenQ13_1.
delete variables anyVenQ13_2
 anyVenQ13_3  
 anyVenQ13_4  
 anyVenQ13_5  
 anyVenQ13_6  
 anyVenQ13_7  
 anyVenQ16_1  
 anyVenQ16_2  
 anyVenQ16_3  
 anyVenQ16_4  
 anyVenQ16_5  
 anyVenQ16_6  
 anyVenQ16_7  
 anyVenQ19_1  
 anyVenQ19_2  
 anyVenQ19_3  
 anyVenQ19_4  anyVenQ19_5 
 anyVenQ19_6 
 anyVenQ19_7 
 anyVenQ22_1 
 anyVenQ22_2 
 anyVenQ22_3 
 anyVenQ22_4 
 anyVenQ22_5 
 anyVenQ22_6 
 anyVenQ22_7  
 missing_OthersQ19 
 missing_OthersQ22 
 missing_OthersQ25   missing_OthersQ28.
execute.




/* make data long from wide */
varstocases
 /make Num_VenQ13 from Num_VenQ13_1 to Num_VenQ13_7 
 /make Num_VenQ16 from Num_VenQ16_1 to Num_VenQ16_7 
 /make Num_VenQ19 from Num_VenQ19_1 to Num_VenQ19_7 
 /make Num_VenQ22 from Num_VenQ22_1 to Num_VenQ22_7 
 /index=whichcat.
 
/* change formats to not show two zeroes after decimal point */
formats Num_VenQ13 Num_VenQ16 Num_VenQ19 Num_VenQ22 (F9.0). 

variable labels Num_VenQ13 'Concrete Resources (e.g., Cash Asst.)'.
variable labels Num_VenQ16 'Mental Health, Drug/Alc., and Int. Dis. Resources'. 
variable labels Num_VenQ19 'Child Welfare Resources'.
variable labels Num_VenQ22 'Community Resources (e.g., Aft.-Schl.)'.

value labels whichcat 1 'Wait L.' 2 'Poor Qual.' 3 'Don''t Know' 
 4 'Svc. Unavail.' 5 'Not Meet Req.' 6 'Lack Forms'
 7 'Other'.
 
 
/* Question #13 */ 
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=Num_VenQ13 COUNT()[name="COUNT"] whichcat MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: Num_VenQ13=col(source(s), name("Num_VenQ13"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  DATA: whichcat=col(source(s), name("whichcat"), unit.category())
  GUIDE: axis(dim(1), label("Concrete Resources (e.g., Cash Asst.)"))
  GUIDE: axis(dim(4), label("Reason Why Not"), opposite())
  GUIDE: text.title(label("Histogram of Ven. Responses"))
    GUIDE: text.subtitle(label("Max. Possible: 13"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(Num_VenQ13*COUNT*1*whichcat), shape.interior(shape.square))
  
END GPL.
 

 /* Question #16 */
 GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=Num_VenQ16 COUNT()[name="COUNT"] whichcat MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: Num_VenQ16=col(source(s), name("Num_VenQ16"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  DATA: whichcat=col(source(s), name("whichcat"), unit.category())
  GUIDE: axis(dim(1), label("Mental Health, Drug/Alc., and Int. Dis. Resources"))
  GUIDE: axis(dim(4), label("Reason Why Not"), opposite())
  GUIDE: text.title(label("Histogram of Venango Responses"))
    GUIDE: text.subtitle(label("Max. Possible: 11"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(Num_VenQ16*COUNT*1*whichcat), shape.interior(shape.square))
  
END GPL.
 

 
 /* Question #19 */
 GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=Num_VenQ19 COUNT()[name="COUNT"] whichcat MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: Num_VenQ19=col(source(s), name("Num_VenQ19"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  DATA: whichcat=col(source(s), name("whichcat"), unit.category())
  GUIDE: axis(dim(1), label("Child Welfare Resources"))
  GUIDE: axis(dim(4), label("Reason Why Not"), opposite())
  GUIDE: text.title(label("Histogram of Venango Responses"))
    GUIDE: text.subtitle(label("Max. Possible: 6"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(Num_VenQ19*COUNT*1*whichcat), shape.interior(shape.square))
  
END GPL.
 
 
 
 /* Question #22 */
 GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=Num_VenQ22 COUNT()[name="COUNT"] whichcat MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: Num_VenQ22=col(source(s), name("Num_VenQ22"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  DATA: whichcat=col(source(s), name("whichcat"), unit.category())
  GUIDE: axis(dim(1), label("Community Resources (e.g., Aft.-Schl.)"))
  GUIDE: axis(dim(4), label("Reason Why Not"), opposite())
  GUIDE: text.title(label("Histogram of Venango Responses"))
    GUIDE: text.subtitle(label("Max. Possible: 5"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(Num_VenQ22*COUNT*1*whichcat), shape.interior(shape.square))
  
END GPL.
 
  