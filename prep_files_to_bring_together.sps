
/* EBPQ file */
/* Rename variables for Ven file */

get file='H:\prep_ebpq\data_files\EBPQ_Clean_Venango.sav.'.

/* variables are the same at the start of the file */
rename variables (V1=OthersV1 ).
rename variables (V2=OthersV2 ).
rename variables (V6=OthersV6 ).
rename variables (V7=OthersV7 ).
rename variables (V8=OthersV8 ).
rename variables (V9=OthersV9 ).
rename variables (V10=OthersV10 ).
rename variables (ID=OthersID ).
rename variables (Q2=OthersQ2  ).
rename variables (Q3_1=OthersQ3_1  ).
rename variables (Q3_2=OthersQ3_2  ).
rename variables (Q3_3=OthersQ3_3  ).
rename variables (Q3_4=OthersQ3_4  ).
rename variables (Q3_5=OthersQ3_5  ).
rename variables (Q3_6=OthersQ3_6  ).
rename variables (Q3_7=OthersQ3_7  ).
rename variables (Q3_8=OthersQ3_8  ).
rename variables (Q3_9=OthersQ3_9  ).
rename variables (Q3_10=OthersQ3_10  ).
rename variables (Q3_10_TEXT=OthersQ3_10_TEXT  ).
rename variables (Q4=OthersQ4  ).
rename variables (Q5_1=OthersQ5_1  ).
rename variables (Q5_2=OthersQ5_2  ).
rename variables (Q5_3=OthersQ5_3  ).
rename variables (Q5_4=OthersQ5_4  ).

/* variables at end of file */
rename variables (Q36=OthersQ36).
rename variables (Q37=OthersQ37).
rename variables (Q38_1=OthersQ38_1).
rename variables (Q38_2=OthersQ38_2).
rename variables (Q38_3=OthersQ38_3).
rename variables (Q38_4=OthersQ38_4).
rename variables (Q38_5=OthersQ38_5).
rename variables (Q38_6=OthersQ38_6).
rename variables (Q38_7=OthersQ38_7).
rename variables (Q38_7_TEXT=OthersQ38_7_TEXT).
rename variables (Q39=OthersQ39).
rename variables (Q40=OthersQ40).
rename variables (Q41=OthersQ41).
rename variables (Q42=OthersQ42).
rename variables (Q43=OthersQ43).
rename variables (Q44=OthersQ44).
rename variables (Q45=OthersQ45).

rename variables (LocationLatitude=OthersLocationLatitude).
rename variables (LocationLongitude=OthersLocationLongitude).
rename variables (LocationAccuracy=OthersLocationAccuracy).



/* variables in common between the two files */

/* standardized measures */
rename variables (Q27_1=OthersQ6_1).
rename variables (Q27_2=OthersQ6_2).
rename variables (Q27_3=OthersQ6_3).
rename variables (Q27_4=OthersQ6_4).
rename variables (Q27_5=OthersQ6_5).
rename variables (Q27_6=OthersQ6_6).
rename variables (Q27_7=OthersQ6_7).
rename variables (Q27_8=OthersQ6_8).
rename variables (Q28_1=OthersQ7_1).
rename variables (Q28_2=OthersQ7_2).
rename variables (Q28_3=OthersQ7_3).
rename variables (Q28_4=OthersQ7_4).
rename variables (Q28_5=OthersQ7_5).
rename variables (Q28_6=OthersQ7_6).
rename variables (Q28_7=OthersQ7_7).
rename variables (Q29=OthersQ8).
rename variables (Q30=OthersQ9).
rename variables (Q31_1=OthersQ10_1).
rename variables (Q31_2=OthersQ10_2).
rename variables (Q31_3=OthersQ10_3).
rename variables (Q31_4=OthersQ10_4).
rename variables (Q31_5=OthersQ10_5).
rename variables (Q31_5_TEXT=OthersQ10_5_TEXT).
rename variables (Q32_x1=OthersQ11_x1).
rename variables (Q32_x2=OthersQ11_x2).
rename variables (Q32_x3=OthersQ11_x3).
rename variables (Q32_x4=OthersQ11_x4).
rename variables (Q32_x5=OthersQ11_x5).
rename variables (Q32_x6=OthersQ11_x6).
rename variables (Q32_x7=OthersQ11_x7).
rename variables (Q32_x8=OthersQ11_x8).
rename variables (Q32_x9=OthersQ11_x9).
rename variables (Q32_x10=OthersQ11_x10).
rename variables (Q32_x11=OthersQ11_x11).
rename variables (Q32_x12=OthersQ11_x12).
rename variables (Q32_x13=OthersQ11_x13).
rename variables (Q33=OthersQ12).
rename variables (Q34=OthersQ13).

/* Referral Questions */
/* Introductory Questions */

rename variables (Q6=OthersQ14).
rename variables (Q7=OthersQ15).
rename variables (Q8=OthersQ16).
rename variables (Q9=OthersQ17).
rename variables (Q10_1=OthersQ18_1).
rename variables (Q10_2=OthersQ18_2).
rename variables (Q10_3=OthersQ18_3).
rename variables (Q10_4=OthersQ18_4).
rename variables (Q10_5=OthersQ18_5).
rename variables (Q10_6=OthersQ18_6).
rename variables (Q10_7=OthersQ18_7).
rename variables (Q10_8=OthersQ18_8).
rename variables (Q10_9=OthersQ18_9).
rename variables (Q10_10=OthersQ18_10).
rename variables (Q10_10_TEXT=OthersQ18_10_TEXT).


/* Concrete Resources */

rename variables (Q11_1=OthersQ19_1).
rename variables (Q11_2=OthersQ19_2).
rename variables (Q11_3=OthersQ19_3).
rename variables (Q11_4=OthersQ19_4).
rename variables (Q11_5=OthersQ19_5).
rename variables (Q11_6=OthersQ19_6).
rename variables (Q11_7=OthersQ19_7).
rename variables (Q11_8=OthersQ19_8).
rename variables (Q11_9=OthersQ19_9).
rename variables (Q11_10=OthersQ19_10).
rename variables (Q11_11=OthersQ19_11).
rename variables (Q11_12=OthersQ19_12).
rename variables (Q11_13=OthersQ19_13).
rename variables (Q12_1=OthersQ20_1).
rename variables (Q12_2=OthersQ20_2).


/* the variables in Venango */
/* where multiple variables fit to one "others" variable */

rename variables (Q13_1_1=VenQ13_1_1).
rename variables (Q13_1_2=VenQ13_1_2).
rename variables (Q13_1_3=VenQ13_1_3).
rename variables (Q13_1_4=VenQ13_1_4).
rename variables (Q13_1_5=VenQ13_1_5).
rename variables (Q13_1_6=VenQ13_1_6).
rename variables (Q13_1_7=VenQ13_1_7).
rename variables (Q13_1_8=VenQ13_1_8).
rename variables (Q13_1_9=VenQ13_1_9).
rename variables (Q13_1_10=VenQ13_1_10).
rename variables (Q13_1_11=VenQ13_1_11).
rename variables (Q13_1_12=VenQ13_1_12).
rename variables (Q13_1_13=VenQ13_1_13).
rename variables (Q13_2_1=VenQ13_2_1).
rename variables (Q13_2_2=VenQ13_2_2).
rename variables (Q13_2_3=VenQ13_2_3).
rename variables (Q13_2_4=VenQ13_2_4).
rename variables (Q13_2_5=VenQ13_2_5).
rename variables (Q13_2_6=VenQ13_2_6).
rename variables (Q13_2_7=VenQ13_2_7).
rename variables (Q13_2_8=VenQ13_2_8).
rename variables (Q13_2_9=VenQ13_2_9).
rename variables (Q13_2_10=VenQ13_2_10).
rename variables (Q13_2_11=VenQ13_2_11).
rename variables (Q13_2_12=VenQ13_2_12).
rename variables (Q13_2_13=VenQ13_2_13).
rename variables (Q13_3_1=VenQ13_3_1).
rename variables (Q13_3_2=VenQ13_3_2).
rename variables (Q13_3_3=VenQ13_3_3).
rename variables (Q13_3_4=VenQ13_3_4).
rename variables (Q13_3_5=VenQ13_3_5).
rename variables (Q13_3_6=VenQ13_3_6).
rename variables (Q13_3_7=VenQ13_3_7).
rename variables (Q13_3_8=VenQ13_3_8).
rename variables (Q13_3_9=VenQ13_3_9).
rename variables (Q13_3_10=VenQ13_3_10).
rename variables (Q13_3_11=VenQ13_3_11).
rename variables (Q13_3_12=VenQ13_3_12).
rename variables (Q13_3_13=VenQ13_3_13).

rename variables (Q13_4_1=VenQ13_4_1).
rename variables (Q13_4_2=VenQ13_4_2).
rename variables (Q13_4_3=VenQ13_4_3).
rename variables (Q13_4_4=VenQ13_4_4).
rename variables (Q13_4_5=VenQ13_4_5).
rename variables (Q13_4_6=VenQ13_4_6).
rename variables (Q13_4_7=VenQ13_4_7).
rename variables (Q13_4_8=VenQ13_4_8).
rename variables (Q13_4_9=VenQ13_4_9).
rename variables (Q13_4_10=VenQ13_4_10).
rename variables (Q13_4_11=VenQ13_4_11).
rename variables (Q13_4_12=VenQ13_4_12).
rename variables (Q13_4_13=VenQ13_4_13).
rename variables (Q13_5_1=VenQ13_5_1).
rename variables (Q13_5_2=VenQ13_5_2).
rename variables (Q13_5_3=VenQ13_5_3).
rename variables (Q13_5_4=VenQ13_5_4).
rename variables (Q13_5_5=VenQ13_5_5).
rename variables (Q13_5_6=VenQ13_5_6).
rename variables (Q13_5_7=VenQ13_5_7).
rename variables (Q13_5_8=VenQ13_5_8).
rename variables (Q13_5_9=VenQ13_5_9).
rename variables (Q13_5_10=VenQ13_5_10).
rename variables (Q13_5_11=VenQ13_5_11).
rename variables (Q13_5_12=VenQ13_5_12).
rename variables (Q13_5_13=VenQ13_5_13).
rename variables (Q13_6_1=VenQ13_6_1).
rename variables (Q13_6_2=VenQ13_6_2).
rename variables (Q13_6_3=VenQ13_6_3).
rename variables (Q13_6_4=VenQ13_6_4).
rename variables (Q13_6_5=VenQ13_6_5).
rename variables (Q13_6_6=VenQ13_6_6).
rename variables (Q13_6_7=VenQ13_6_7).
rename variables (Q13_6_8=VenQ13_6_8).
rename variables (Q13_6_9=VenQ13_6_9).
rename variables (Q13_6_10=VenQ13_6_10).
rename variables (Q13_6_11=VenQ13_6_11).
rename variables (Q13_6_12=VenQ13_6_12).
rename variables (Q13_6_13=VenQ13_6_13).

rename variables (Q13_7_1=VenQ13_7_1).
rename variables (Q13_7_2=VenQ13_7_2).
rename variables (Q13_7_3=VenQ13_7_3).
rename variables (Q13_7_4=VenQ13_7_4).
rename variables (Q13_7_5=VenQ13_7_5).
rename variables (Q13_7_6=VenQ13_7_6).
rename variables (Q13_7_7=VenQ13_7_7).
rename variables (Q13_7_8=VenQ13_7_8).
rename variables (Q13_7_9=VenQ13_7_9).
rename variables (Q13_7_10=VenQ13_7_10).
rename variables (Q13_7_11=VenQ13_7_11).
rename variables (Q13_7_12=VenQ13_7_12).
rename variables (Q13_7_13=VenQ13_7_13).
rename variables (Q13_7_TEXT_1=VenQ13_7_TEXT_1).
rename variables (Q13_7_TEXT_2=VenQ13_7_TEXT_2).
rename variables (Q13_7_TEXT_3=VenQ13_7_TEXT_3).
rename variables (Q13_7_TEXT_4=VenQ13_7_TEXT_4).
rename variables (Q13_7_TEXT_5=VenQ13_7_TEXT_5).
rename variables (Q13_7_TEXT_6=VenQ13_7_TEXT_6).
rename variables (Q13_7_TEXT_7=VenQ13_7_TEXT_7).
rename variables (Q13_7_TEXT_8=VenQ13_7_TEXT_8).
rename variables (Q13_7_TEXT_9=VenQ13_7_TEXT_9).
rename variables (Q13_7_TEXT_10=VenQ13_7_TEXT_10).
rename variables (Q13_7_TEXT_11=VenQ13_7_TEXT_11).
rename variables (Q13_7_TEXT_12=VenQ13_7_TEXT_12).
rename variables (Q13_7_TEXT_13=VenQ13_7_TEXT_13).

/* MH/DA/ID Resources */

rename variables (Q14_1=OthersQ22_1).
rename variables (Q14_2=OthersQ22_2).
rename variables (Q14_3=OthersQ22_3).
rename variables (Q14_4=OthersQ22_4).
rename variables (Q14_5=OthersQ22_5).
rename variables (Q14_6=OthersQ22_6).
rename variables (Q14_7=OthersQ22_7).
rename variables (Q14_8=OthersQ22_8).
rename variables (Q14_9=OthersQ22_9).
rename variables (Q14_10=OthersQ22_10).
rename variables (Q14_11=OthersQ22_11).
rename variables (Q15_1=OthersQ23_1).
rename variables (Q15_2=OthersQ23_2).


/* the variables in Venango */
/* where multiple variables fit to one "others" variable */


rename variables (Q16_1_1=VenQ16_1_1).
rename variables (Q16_1_2=VenQ16_1_2).
rename variables (Q16_1_3=VenQ16_1_3).
rename variables (Q16_1_4=VenQ16_1_4).
rename variables (Q16_1_5=VenQ16_1_5).
rename variables (Q16_1_6=VenQ16_1_6).
rename variables (Q16_1_7=VenQ16_1_7).
rename variables (Q16_1_8=VenQ16_1_8).
rename variables (Q16_1_9=VenQ16_1_9).
rename variables (Q16_1_10=VenQ16_1_10).
rename variables (Q16_1_11=VenQ16_1_11).
rename variables (Q16_2_1=VenQ16_2_1).
rename variables (Q16_2_2=VenQ16_2_2).
rename variables (Q16_2_3=VenQ16_2_3).
rename variables (Q16_2_4=VenQ16_2_4).
rename variables (Q16_2_5=VenQ16_2_5).
rename variables (Q16_2_6=VenQ16_2_6).
rename variables (Q16_2_7=VenQ16_2_7).
rename variables (Q16_2_8=VenQ16_2_8).
rename variables (Q16_2_9=VenQ16_2_9).
rename variables (Q16_2_10=VenQ16_2_10).
rename variables (Q16_2_11=VenQ16_2_11).
rename variables (Q16_3_1=VenQ16_3_1).
rename variables (Q16_3_2=VenQ16_3_2).
rename variables (Q16_3_3=VenQ16_3_3).
rename variables (Q16_3_4=VenQ16_3_4).
rename variables (Q16_3_5=VenQ16_3_5).
rename variables (Q16_3_6=VenQ16_3_6).
rename variables (Q16_3_7=VenQ16_3_7).
rename variables (Q16_3_8=VenQ16_3_8).
rename variables (Q16_3_9=VenQ16_3_9).
rename variables (Q16_3_10=VenQ16_3_10).
rename variables (Q16_3_11=VenQ16_3_11).
rename variables (Q16_4_1=VenQ16_4_1).
rename variables (Q16_4_2=VenQ16_4_2).
rename variables (Q16_4_3=VenQ16_4_3).
rename variables (Q16_4_4=VenQ16_4_4).
rename variables (Q16_4_5=VenQ16_4_5).
rename variables (Q16_4_6=VenQ16_4_6).
rename variables (Q16_4_7=VenQ16_4_7).
rename variables (Q16_4_8=VenQ16_4_8).
rename variables (Q16_4_9=VenQ16_4_9).
rename variables (Q16_4_10=VenQ16_4_10).
rename variables (Q16_4_11=VenQ16_4_11).
rename variables (Q16_5_1=VenQ16_5_1).
rename variables (Q16_5_2=VenQ16_5_2).
rename variables (Q16_5_3=VenQ16_5_3).
rename variables (Q16_5_4=VenQ16_5_4).
rename variables (Q16_5_5=VenQ16_5_5).
rename variables (Q16_5_6=VenQ16_5_6).
rename variables (Q16_5_7=VenQ16_5_7).
rename variables (Q16_5_8=VenQ16_5_8).
rename variables (Q16_5_9=VenQ16_5_9).
rename variables (Q16_5_10=VenQ16_5_10).
rename variables (Q16_5_11=VenQ16_5_11).
rename variables (Q16_6_1=VenQ16_6_1).
rename variables (Q16_6_2=VenQ16_6_2).
rename variables (Q16_6_3=VenQ16_6_3).
rename variables (Q16_6_4=VenQ16_6_4).
rename variables (Q16_6_5=VenQ16_6_5).
rename variables (Q16_6_6=VenQ16_6_6).
rename variables (Q16_6_7=VenQ16_6_7).
rename variables (Q16_6_8=VenQ16_6_8).
rename variables (Q16_6_9=VenQ16_6_9).
rename variables (Q16_6_10=VenQ16_6_10).
rename variables (Q16_6_11=VenQ16_6_11).
rename variables (Q16_7_1=VenQ16_7_1).
rename variables (Q16_7_2=VenQ16_7_2).
rename variables (Q16_7_3=VenQ16_7_3).
rename variables (Q16_7_4=VenQ16_7_4).
rename variables (Q16_7_5=VenQ16_7_5).
rename variables (Q16_7_6=VenQ16_7_6).
rename variables (Q16_7_7=VenQ16_7_7).
rename variables (Q16_7_8=VenQ16_7_8).
rename variables (Q16_7_9=VenQ16_7_9).
rename variables (Q16_7_10=VenQ16_7_10).
rename variables (Q16_7_11=VenQ16_7_11).
rename variables (Q16_7_TEXT_1=VenQ16_7_TEXT_1).
rename variables (Q16_7_TEXT_2=VenQ16_7_TEXT_2).
rename variables (Q16_7_TEXT_3=VenQ16_7_TEXT_3).
rename variables (Q16_7_TEXT_4=VenQ16_7_TEXT_4).
rename variables (Q16_7_TEXT_5=VenQ16_7_TEXT_5).
rename variables (Q16_7_TEXT_6=VenQ16_7_TEXT_6).
rename variables (Q16_7_TEXT_7=VenQ16_7_TEXT_7).
rename variables (Q16_7_TEXT_8=VenQ16_7_TEXT_8).
rename variables (Q16_7_TEXT_9=VenQ16_7_TEXT_9).
rename variables (Q16_7_TEXT_10=VenQ16_7_TEXT_10).
rename variables (Q16_7_TEXT_11=VenQ16_7_TEXT_11).


/* Child Welfare */



rename variables (Q17_1=OthersQ25_1).
rename variables (Q17_2=OthersQ25_2).
rename variables (Q17_3=OthersQ25_3).
rename variables (Q17_4=OthersQ25_4).
rename variables (Q17_5=OthersQ25_5).
rename variables (Q17_6=OthersQ25_6).
rename variables (Q18_1=OthersQ26_1).
rename variables (Q18_2=OthersQ26_2).

/* the variables in Venango */
/* where multiple variables fit to one "others" variable */


rename variables (Q19_1_1=VenQ19_1_1).
rename variables (Q19_1_2=VenQ19_1_2).
rename variables (Q19_1_3=VenQ19_1_3).
rename variables (Q19_1_4=VenQ19_1_4).
rename variables (Q19_1_5=VenQ19_1_5).
rename variables (Q19_1_6=VenQ19_1_6).
rename variables (Q19_2_1=VenQ19_2_1).
rename variables (Q19_2_2=VenQ19_2_2).
rename variables (Q19_2_3=VenQ19_2_3).
rename variables (Q19_2_4=VenQ19_2_4).
rename variables (Q19_2_5=VenQ19_2_5).
rename variables (Q19_2_6=VenQ19_2_6).
rename variables (Q19_3_1=VenQ19_3_1).
rename variables (Q19_3_2=VenQ19_3_2).
rename variables (Q19_3_3=VenQ19_3_3).
rename variables (Q19_3_4=VenQ19_3_4).
rename variables (Q19_3_5=VenQ19_3_5).
rename variables (Q19_3_6=VenQ19_3_6).
rename variables (Q19_4_1=VenQ19_4_1).
rename variables (Q19_4_2=VenQ19_4_2).
rename variables (Q19_4_3=VenQ19_4_3).
rename variables (Q19_4_4=VenQ19_4_4).
rename variables (Q19_4_5=VenQ19_4_5).
rename variables (Q19_4_6=VenQ19_4_6).
rename variables (Q19_5_1=VenQ19_5_1).
rename variables (Q19_5_2=VenQ19_5_2).
rename variables (Q19_5_3=VenQ19_5_3).
rename variables (Q19_5_4=VenQ19_5_4).
rename variables (Q19_5_5=VenQ19_5_5).
rename variables (Q19_5_6=VenQ19_5_6).

rename variables (Q19_6_1=VenQ19_6_1).
rename variables (Q19_6_2=VenQ19_6_2).
rename variables (Q19_6_3=VenQ19_6_3).
rename variables (Q19_6_4=VenQ19_6_4).
rename variables (Q19_6_5=VenQ19_6_5).
rename variables (Q19_6_6=VenQ19_6_6).
rename variables (Q19_7_1=VenQ19_7_1).
rename variables (Q19_7_2=VenQ19_7_2).
rename variables (Q19_7_3=VenQ19_7_3).
rename variables (Q19_7_4=VenQ19_7_4).
rename variables (Q19_7_5=VenQ19_7_5).
rename variables (Q19_7_6=VenQ19_7_6).
rename variables (Q19_7_TEXT_1=VenQ19_7_TEXT_1).
rename variables (Q19_7_TEXT_2=VenQ19_7_TEXT_2).
rename variables (Q19_7_TEXT_3=VenQ19_7_TEXT_3).
rename variables (Q19_7_TEXT_4=VenQ19_7_TEXT_4).
rename variables (Q19_7_TEXT_5=VenQ19_7_TEXT_5).
rename variables (Q19_7_TEXT_6=VenQ19_7_TEXT_6).


/* Community Resources */

rename variables (Q20_1=OthersQ28_1).
rename variables (Q20_2=OthersQ28_2).
rename variables (Q20_3=OthersQ28_3).
rename variables (Q20_4=OthersQ28_4).
rename variables (Q20_5=OthersQ28_5).
rename variables (Q21_1=OthersQ29_1).
rename variables (Q21_2=OthersQ29_2).

/* variables that match not singly */
/* to the other counties */

rename variables (Q22_1_1=VenQ22_1_1).
rename variables (Q22_1_2=VenQ22_1_2).
rename variables (Q22_1_3=VenQ22_1_3).
rename variables (Q22_1_4=VenQ22_1_4).
rename variables (Q22_1_5=VenQ22_1_5).
rename variables (Q22_2_1=VenQ22_2_1).
rename variables (Q22_2_2=VenQ22_2_2).
rename variables (Q22_2_3=VenQ22_2_3).
rename variables (Q22_2_4=VenQ22_2_4).
rename variables (Q22_2_5=VenQ22_2_5).
rename variables (Q22_3_1=VenQ22_3_1).
rename variables (Q22_3_2=VenQ22_3_2).
rename variables (Q22_3_3=VenQ22_3_3).
rename variables (Q22_3_4=VenQ22_3_4).
rename variables (Q22_3_5=VenQ22_3_5).

rename variables (Q22_4_1=VenQ22_4_1).
rename variables (Q22_4_2=VenQ22_4_2).
rename variables (Q22_4_3=VenQ22_4_3).
rename variables (Q22_4_4=VenQ22_4_4).
rename variables (Q22_4_5=VenQ22_4_5).
rename variables (Q22_5_1=VenQ22_5_1).
rename variables (Q22_5_2=VenQ22_5_2).
rename variables (Q22_5_3=VenQ22_5_3).
rename variables (Q22_5_4=VenQ22_5_4).
rename variables (Q22_5_5=VenQ22_5_5).
rename variables (Q22_6_1=VenQ22_6_1).
rename variables (Q22_6_2=VenQ22_6_2).
rename variables (Q22_6_3=VenQ22_6_3).
rename variables (Q22_6_4=VenQ22_6_4).
rename variables (Q22_6_5=VenQ22_6_5).
rename variables (Q22_7_1=VenQ22_7_1).
rename variables (Q22_7_2=VenQ22_7_2).
rename variables (Q22_7_3=VenQ22_7_3).
rename variables (Q22_7_4=VenQ22_7_4).
rename variables (Q22_7_5=VenQ22_7_5).
rename variables (Q22_7_TEXT_1=VenQ22_7_TEXT_1).
rename variables (Q22_7_TEXT_2=VenQ22_7_TEXT_2).
rename variables (Q22_7_TEXT_3=VenQ22_7_TEXT_3).
rename variables (Q22_7_TEXT_4=VenQ22_7_TEXT_4).
rename variables (Q22_7_TEXT_5=VenQ22_7_TEXT_5).

/* Conclusion */

rename variables (Q23=OthersQ31).
rename variables (Q24=OthersQ32).
rename variables (Q25=OthersQ33).
rename variables (Q26_1=OthersQ34_1).
rename variables (Q26_2=OthersQ34_2).
rename variables (Q26_3=OthersQ34_3).
rename variables (Q26_4=OthersQ34_4).
rename variables (Q26_5=OthersQ34_5).
rename variables (Q26_6=OthersQ34_6).
rename variables (Q26_7=OthersQ34_7).
rename variables (Q26_8=OthersQ34_8).
rename variables (Q26_9=OthersQ34_9).
rename variables (Q26_10=OthersQ34_10).
rename variables (Q26_11=OthersQ34_11).
rename variables (Q26_12=OthersQ34_12).
rename variables (Q26_13=OthersQ34_13).


SAVE OUTfile='H:\prep_ebpq\data_files\EBPQ_Clean_Venango_renamed.sav.'.

*
*
**
*
/* Other File! */
*
*
***
*

/* rename variables in file for the other counties */
get file='H:\prep_ebpq\data_files\EBPQ__Clean_Cohort1.sav.'.

/* loop over all the variable names */
/* add the prefix "others" in front of them */


define loopingrename (!pos !charend('/'))
!do !i !in (!1)
!let !newname=!concat('Others', !i)

rename variables (!i=!newname).
!doend

!enddefine.


loopingrename V1
 V2
 V6
 V7
 V8
 V9
 V10
 ID
 Q2
 Q3_1
 Q3_2
 Q3_3
 Q3_4
 Q3_5
 Q3_6
 Q3_7
 Q3_8
 Q3_9
 Q3_10
 Q3_10_TEXT
 Q4
 Q5_1
 Q5_2
 Q5_3
 Q5_4
 Q6_1
 Q6_2
 Q6_3
 Q6_4
 Q6_5
 Q6_6
 Q6_7
 Q6_8
 Q7_1
 Q7_2
 Q7_3
 Q7_4
 Q7_5
 Q7_6
 Q7_7
 Q8
 Q9
 Q10_1
 Q10_2
 Q10_3
 Q10_4
 Q10_5
 Q10_5_TEXT
 Q11_x1
 Q11_x2
 Q11_x3
 Q11_x4
 Q11_x5
 Q11_x6
 Q11_x7
 Q11_x8
 Q11_x9
 Q11_x10
 Q11_x11
 Q11_x12
 Q11_x13
 Q12
 Q13
 Q14
 Q15
 Q16
 Q17
 Q18_1
 Q18_2
 Q18_3
 Q18_4
 Q18_5
 Q18_6
 Q18_7
 Q18_8
 Q18_9
 Q18_10
 Q18_10_TEXT
 Q19_1
 Q19_2
 Q19_3
 Q19_4
 Q19_5
 Q19_6
 Q19_7
 Q19_8
 Q19_9
 Q19_10
 Q19_11
 Q19_12
 Q19_13
 Q20_1
 Q20_2
 Q21_1
 Q21_2
 Q21_3
 Q21_4
 Q21_5
 Q21_6
 Q21_7
 Q21_7_TEXT
 Q22_1
 Q22_2
 Q22_3
 Q22_4
 Q22_5
 Q22_6
 Q22_7
 Q22_8
 Q22_9
 Q22_10
 Q22_11
 Q23_1
 Q23_2
 Q24_1
 Q24_2
 Q24_3
 Q24_4
 Q24_5
 Q24_6
 Q24_7
 Q24_7_TEXT
 Q25_1
 Q25_2
 Q25_3
 Q25_4
 Q25_5
 Q25_6
 Q26_1
 Q26_2
 Q27_1
 Q27_2
 Q27_3
 Q27_4
 Q27_5
 Q27_6
 Q27_7
 Q27_7_TEXT
 Q28_1
 Q28_2
 Q28_3
 Q28_4
 Q28_5
 Q29_1
 Q29_2
 Q30_1
 Q30_2
 Q30_3
 Q30_4
 Q30_5
 Q30_6
 Q30_7
 Q30_7_TEXT
 Q31
 Q32
 Q33
 Q34_1
 Q34_2
 Q34_3
 Q34_4
 Q34_5
 Q34_6
 Q34_7
 Q34_8
 Q34_9
 Q34_10
 Q34_11
 Q34_12
 Q34_13
 Q36
 Q37
 Q38_1
 Q38_2
 Q38_3
 Q38_4
 Q38_5
 Q38_6
 Q38_7
 Q38_7_TEXT
 Q39
 Q40
 Q41
 Q42
 Q43
 Q44
 Q45
 LocationLatitude
 LocationLongitude
 LocationAccuracy.
 
 
SAVE OUTfile='H:\prep_ebpq\data_files\EBPQ_Clean_Others_renamed.sav.'. 

/* next step is in prep_files_after_bringing_together.sps */
