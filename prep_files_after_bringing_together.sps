***
***
******
/* put the two files together */
/* compare results between the sets of counties */
***
***
******


ADD FILES
	file='H:\prep_ebpq\data_files\EBPQ_Clean_Venango_renamed.sav.'
	file='H:\prep_ebpq\data_files\EBPQ_Clean_Others_renamed.sav.'. 

execute.	


/* SET USER MISSING */
/* for the Aarons subscale variables */
/* some questions have missing value (period) */
/* some questions have -99 as missing value */
/* (the -99 is not listed with a corresponding value in the codebook, */
/* so I am assuming it means missing value */

/* put together the Aarons subscales */
/* for subscales, higher is "better" OTHER THAN */
/* divergence (lower is less divergent) */

MISSING VALUES OthersQ2 (-99).

MISSING VALUES OthersQ3_1
 OthersQ3_2
 OthersQ3_3
 OthersQ3_4
 OthersQ3_5
 OthersQ3_6
 OthersQ3_7
 OthersQ3_8
 OthersQ3_9
 OthersQ3_10 (-99).

MISSING VALUES OthersQ4 (-99).
MISSING VALUES OthersQ5_1 
 OthersQ5_2 
 OthersQ5_3 
 OthersQ5_4 (-99). 

MISSING VALUES OthersQ9 (-99).

MISSING VALUES OthersQ10_1
 OthersQ10_2
 OthersQ10_3
 OthersQ10_4
 OthersQ10_5 (-99).
 

MISSING VALUES OthersQ14 (-99).
MISSING VALUES OthersQ11_x1 (-99).
MISSING VALUES OthersQ11_x3 (-99).
MISSING VALUES OthersQ11_x2 
 OthersQ11_x4 
 OthersQ11_x5 
 OthersQ11_x6 
 OthersQ11_x7 
 OthersQ11_x8 
 OthersQ11_x9 
 OthersQ11_x10 
 OthersQ11_x11 
 OthersQ11_x12 
 OthersQ11_x13 
  (-99). 
MISSING VALUES OthersQ12 (-99). 


MISSING VALUES OthersQ17 (-99).
MISSING VALUES OthersQ15 OthersQ16 (-99).

MISSING VALUES OthersQ18_1
 OthersQ18_2
 OthersQ18_3
 OthersQ18_4
 OthersQ18_5
 OthersQ18_6
 OthersQ18_7
 OthersQ18_8
 OthersQ18_9
 OthersQ18_10 (-99).

MISSING VALUES OthersQ19_1 OthersQ19_2 OthersQ19_3 OthersQ19_4 OthersQ19_5 OthersQ19_6 OthersQ19_7 OthersQ19_8 
 OthersQ19_9 OthersQ19_10 OthersQ19_11 OthersQ19_12 OthersQ19_13
 OthersQ21_1 OthersQ21_2 OthersQ21_3 OthersQ21_4 OthersQ21_5 OthersQ21_6 OthersQ21_7 
 OthersQ22_1 OthersQ22_2 OthersQ22_3 OthersQ22_4 OthersQ22_5 OthersQ22_6 OthersQ22_7 
 OthersQ22_8 OthersQ22_9 OthersQ22_10 OthersQ22_11 OthersQ24_1 
 OthersQ24_2 OthersQ24_3 OthersQ24_4 OthersQ24_5 OthersQ24_6 OthersQ24_7 OthersQ25_1 
 OthersQ25_2 OthersQ25_3 OthersQ25_4 OthersQ25_5 OthersQ25_6 OthersQ27_1 
 OthersQ27_2 OthersQ27_3 OthersQ27_4 OthersQ27_5 OthersQ27_6 OthersQ27_7 OthersQ28_1 
 OthersQ28_2 OthersQ28_3 OthersQ28_4 OthersQ28_5 OthersQ30_1 
 OthersQ30_2 OthersQ30_3 OthersQ30_4 OthersQ30_5 OthersQ30_6 OthersQ30_7 OthersQ31 
 OthersQ32 OthersQ34_1 OthersQ34_2 OthersQ34_3 OthersQ34_4 OthersQ34_5 OthersQ34_6 OthersQ34_7 OthersQ34_8 OthersQ34_9 
 OthersQ34_10 OthersQ34_11 OthersQ34_12 OthersQ34_13 OthersQ36 OthersQ37 OthersQ38_1 OthersQ38_2 
 OthersQ38_3 OthersQ38_4 OthersQ38_5 OthersQ38_6 OthersQ38_7 OthersQ39 OthersQ40 OthersQ41 OthersQ42 OthersQ43   (-99).

/* questions about how hard it is to make a referral */
/* has (-8) as N/A */  
MISSING VALUES  OthersQ20_1 OthersQ20_2 OthersQ23_1 OthersQ23_2 OthersQ26_1 
   OthersQ26_2 OthersQ29_1 OthersQ29_2 (-99, -8).
  
compute CountyCode=OthersQ45.

if (OthersV6='173.161.199.138') CountyCode=5.
if (OthersV6='173.167.90.193') CountyCode=5.
if (OthersV6='198.185.140.100') CountyCode=3.
if (OthersV6='199.224.16.10') CountyCode=1.
if (OthersV6='199.224.16.11') CountyCode=1.
if (OthersV6='199.224.16.12') CountyCode=1.
if (OthersV6='199.224.16.13') CountyCode=1.
if (OthersV6='208.84.252.130') CountyCode=5.
if (OthersV6='208.97.209.130') CountyCode=5.
if (OthersV6='216.220.92.189') CountyCode=6.
if (OthersV6='4.28.135.66') CountyCode=4.
if (OthersV6='50.206.53.242') CountyCode=5.
if (OthersV6='50.254.190.17') CountyCode=5.
if (OthersV6='66.87.114.229') CountyCode=1.
if (OthersV6='66.87.82.67') CountyCode=1.
if (OthersV6='70.192.134.45') CountyCode=5.
if (OthersV6='70.192.141.75') CountyCode=5.
if (OthersV6='70.192.146.128') CountyCode=5.
if (OthersV6='70.215.75.36') CountyCode=5.
if (OthersV6='76.124.239.45') CountyCode=5.
if (OthersV6='98.114.157.190') CountyCode=5.

freq vars=CountyCode.

value labels CountyCode 1 'Allegheny'
 2 'Crawford' 3 'Dauphin' 4  'Lackawanna' 5  'Philadelphia' 6 'Venango'.
 

