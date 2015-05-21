# in addition to counting the number of forms each month,
# this graph also displays the forms where the minimum standard dataset 
# is not available 

# read in the data
mdata <- read.table("h://prep_ebpq//reports//dotplot_ebpas_for_csv.csv",
  header=TRUE, sep=",")

# add factors for county names
mdata$MeasureNum<-factor(mdata$MeasureNum,
 levels = c(1,2,3,4,5),
 labels = c("Requirements","Appeal","Openness","Divergence","Total"))

library(psych)

# load lattice library 
library(lattice)

## default margins
## mar=c(10.1, 4.1, 4.1, 2.1),

 ##saves file as pdf
pdf(file="h://prep_ebpq//reports//20150417_EBPAS_by_county.pdf", paper="letter", height = 10) 

##Scale and Subscale along the y-axis
##performance of each county along x-axis
dotplot(MeasureNum ~ MeanNum, data = mdata, groups = County_ID,
  main = "EBP Attitude Scale by County", 
  xlab= "Mean for the County",
  auto.key=list(title="County", border=TRUE, space="right"),
  scales=list(x=list(at=c(1,2,3),labels=(c("Slight Extent", "Moderate Extent", "Great Extent")))),
	par.settings = simpleTheme(cex=1.2, pch=19)
  )

dev.off()

# prior settings for theme  
#	pch=c(15, 16, 17, 7, 25),
#	col=c("orange", "blue", "green", "yellow", "brown"),
#	corner = c(1, 0)
 #	cex=0.8
#	par.settings= list(layout.heights=list(bottom.padding=10,
  #	xlab.key.padding = 10))

  
# read in the data
mdata2 <- read.table("h://prep_ebpq//reports//dotplot_WHICH_ebps_available_for_csv.csv",
  header=TRUE, sep=",")


## convert YesAvailable to a number
mdata2$YesAvailableNum<-as.numeric(sub("%", "", mdata2$YesAvailable))  

 ##saves file as pdf
pdf(file="h://prep_ebpq//reports//20150417_EBP_Availability_by_county.pdf", paper="letter", height = 10) 

##Scale and Subscale along the y-axis
##performance of each county along x-axis
dotplot(reorder(WhichMeasure, -MeasureNum) ~ YesAvailableNum, data = mdata2, groups = County_ID,
  main = "Availability of EBP by County", 
  xlab= "Pctage Saying Yes, EBP Available",
  auto.key=list(title="County", border=TRUE, space="right"),
  	par.settings = simpleTheme(cex=1.2, pch=19),

  )

dev.off()
  
  

# info sources for EBP   
# read in the data
mdata3 <- read.table("h://prep_ebpq//reports//dotplot_20150417_what_info_source.csv",
  header=TRUE, sep=",")

# add factors for info sources
mdata3$CountyNum<-factor(mdata3$CountyNum,
 levels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  labels = c("Department list",
 "United Way 211",
 "Search engines",
 "Yellow pages",
 "White pages",
 "Personal list",
 "Co-workers",
 "Resource coord",
 "Supervisor",
 "Other"))

mdata3$revorder<-factor(mdata3$CountyNum, levels=rev(levels(mdata3$CountyNum)))

##multiply by 100
## to make it look like the other graph
mdata3$PctYes<-mdata3$PctYes*100 
  
 ##saves file as pdf
pdf(file="h://prep_ebpq//reports//20150417_EBP_info_source_by_county.pdf", paper="letter", height = 10) 

##Scale and Subscale along the y-axis
##performance of each county along x-axis
dotplot(factor(CountyNum, levels = rev(levels(CountyNum))) ~ PctYes, data = mdata3, groups = County_ID,
  main = "Source of Info about EBP by County", 
  xlab= "Pctage Saying Yes",
  ylab= "Information Source",
  auto.key=list(title="County", border=TRUE, space="right"),
  	par.settings = simpleTheme(cex=1.2, pch=19),

  )
  
dev.off()  
  
  
  
# info sources for EBP   
# read in the data
mdata4 <- read.table("h://prep_ebpq//reports//dotplot_WHICH_ebps_available2_for_csv.csv",
  header=TRUE, sep=",")

# add factors for info sources
mdata4$WhichEBP<-factor(mdata4$WhichEBP,
 levels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,11),
  labels = c("Triple P Parenting program",
 "SafeCare",
 "Parent Child Interaction Therapy (PCIT)",
 "Homebuilders",
 "Functional Family Therapy (FFT)",
 "Parents as Teachers (PAT)",
 "Nurse Home Visiting (NFP)",
 "Multisystemic Therapy (MST)",
 "Dialectical Behavior Therapy (DBT)",
 "Trauma-focused Cog. Ther. (TF-CBT)",
 "Multi-dim. Treat. Fos. C. (MDTFC)"))

 mdata4$PctYes<-mdata4$PctYes*100 
  
 ##saves file as pdf
pdf(file="h://prep_ebpq//reports//20150421_EBP_availability_by_county.pdf", paper="letter", height = 10) 

##Scale and Subscale along the y-axis
##performance of each county along x-axis
dotplot(factor(WhichEBP, levels = rev(levels(WhichEBP))) ~ PctYes, data = mdata4, groups = County_ID,
  main = "Availability of EBP by County", 
  xlab= "Pctage Saying Yes",
  ylab= "Which EBP",
  auto.key=list(title="County", border=TRUE, space="right"),
  	par.settings = simpleTheme(cex=1.2, pch=19),

  )
  
dev.off()  


# info sources for EBP   
# read in the data
mdata5 <- read.table("h://prep_ebpq//reports//dotplot_why_not_refer_to_ebp.csv",
  header=TRUE, sep=",")

# add factors for why not refer
mdata5$WhichReason<-factor(mdata5$WhichReason,
 levels = c(1, 2, 3, 4, 5, 6, 7),
  labels = c("Waiting lists",
             "Poor quality",
 "Don't know how to make a referral",
             "Svc. unavailable",
             "Case does not meet requirements for svc.",
             "Lack proper forms to process referral",
             "Other reason"))
			 
# add factors for type of resources
mdata5$WhichResource<-factor(mdata5$WhichResource,
 levels = c(1, 2, 3, 4),
 labels = c("CW Resources", 
 "Comm. Resources", 
 "Concrete Resources", 
 "MH/DA/ID Resources"))

			 
mdata5$PctYes<-mdata5$PctYes*100 			 


  
 ##saves file as pdf
pdf(file="h://prep_ebpq//reports//20150422_EBP_why_not_refer_by_county.pdf", paper="letter", height = 10) 

##Scale and Subscale along the y-axis
##performance of each county along x-axis
dotplot(factor(WhichReason, levels = rev(levels(WhichReason))) ~ PctYes | WhichResource, data = mdata5, groups = County_ID,
  main = "Reasons for Not Referring to EBP by County", 
  xlab= "Pctage Saying Yes",
  ylab= "Which Reason for Not Referring",
  auto.key=list(title="County", border=TRUE, space="right"),
  	par.settings = simpleTheme(cex=1.2, pch=19),
	layout = c(1,4),
	 index.cond=list(c(2,1,4,3))
  )
  
dev.off()  





# Ease of making referral
# for Child or Family
# in the Four Categories of Type of Resources

# read in the data
mdata6 <- read.table("h://prep_ebpq//reports//dotplot_ease_of_referral_for_csv.csv",
  header=TRUE, sep=",")

# add factors for county names
mdata6$ChildorFam<-factor(mdata6$ChildorFam,
 levels = c(1,2),
 labels = c("Child","Family"))

 # add factors for type of resources
mdata6$WhichRes<-factor(mdata6$WhichRes,
 levels = c(1, 2, 3, 4),
 labels = c("Concrete Resources", 
 "MH/DA/ID Resources",
 "CW Resources", 
 "Comm. Resources"))

 
library(psych)

# load lattice library 
library(lattice)

## default margins
## mar=c(10.1, 4.1, 4.1, 2.1),

 ##saves file as pdf
pdf(file="h://prep_ebpq//reports//20150422_ease_referral_by_county.pdf", paper="letter", height = 10) 

##Scale and Subscale along the y-axis
##performance of each county along x-axis
dotplot(factor(WhichRes, levels = rev(levels(WhichRes))) ~ PctYes | ChildorFam, data = mdata6, groups = County_ID,
  main = "Ease of Referring to EBP by County", 
  xlab= "Rating",
  ylab= "Which Type of Resource",
  xlim= c(1, 3),
  auto.key=list(title="County", border=TRUE, space="right"),
  	par.settings = simpleTheme(cex=1.2, pch=19),
	layout = c(1,2),
	  scales=list(x=list(at=c(1,2,3),labels=(c("Very Easy", "Easy", "Challenging")))),

	 index.cond=list(c(2,1))
  )

  
dev.off()

## 
## 
## Topics in Training Received
## 
## 
	 
# read in the data
mdata7 <- read.table("h://prep_ebpq//reports//dotplot_topics_in_trng_for_csv.csv",
  header=TRUE, sep=",")
	 
 # add factors for info sources
mdata7$WhichTopic<-factor(mdata7$WhichTopic,
 levels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  labels = c("Alcohol/Drug Abuse",
 "Assessment/Diagnosis",
 "Engagement Skills",
 "Group Conferencing/Teaming",
 "General Mental Health",
 "Adolescence",
 "Legal (Child Protective Services Law)",
 "Abuse/Neglect",
 "Gangs/Violence",
 "Other topics"))

 mdata7$PctYes<-mdata7$PctYes*100 			 

 
 ##saves file as pdf
pdf(file="h://prep_ebpq//reports//20140422_training_topics_by_county.pdf", paper="letter", height = 10) 

##Scale and Subscale along the y-axis
##performance of each county along x-axis
dotplot(factor(WhichTopic, levels = rev(levels(WhichTopic))) ~ PctYes , data = mdata7, groups = County_ID,
  main = "Topics in Training Received, by County", 
  xlab= "Pctage Saying Yes",
  ylab= "Topic of Knowledge",
  auto.key=list(title="County", border=TRUE, space="right"),
  	par.settings = simpleTheme(cex=1.2, pch=19)
	
  )
  
dev.off()  
 
 
 
 
### Whether any training received 
### Sources of Training 
 
 
# read in the data
mdata8 <- read.table("h://prep_ebpq//reports//dotplot_sources_of_learning.csv",
  header=TRUE, sep=",")

# add factors for why not refer
mdata8$WhichSource<-factor(mdata8$WhichSource,
 levels = c(1, 2, 3, 4, 5, 6),
  labels = c( "Undergrad or grad course work",
 "At a conference",
 "CWRC-provided training",
 "Agency in-service or supv. mtg.",
 "Other",
 "Received any information about EBP's"))
			 
# add factors for type of resources
mdata8$WhichStep<-factor(mdata8$WhichStep,
 levels = c(1, 2),
 labels = c("Whether Yes or No", 
 "For Respondents Saying Yes"))

			 
mdata8$PctYes<-mdata8$PctYes*100 			 


  
 ##saves file as pdf
pdf(file="h://prep_ebpq//reports//20150429_EBP_Sources_of_EBP_info.pdf", paper="letter", height = 10) 

##Scale and Subscale along the y-axis
##performance of each county along x-axis
dotplot(factor(WhichSource, levels = rev(levels(WhichSource))) ~ PctYes | WhichStep, data = mdata8, groups = County_ID,
  main = "Sources of Knowledge about EBP's by County", 
  xlab= "Pctage Saying Yes",
  ylab= "Which Source for Information about EBP",
  scales=list(y=list(relation='free')),
  auto.key=list(title="County", border=TRUE, space="right"),
  	par.settings = simpleTheme(cex=1.2, pch=19),
	layout = c(1,2),
	 index.cond=list(c(2,1))
  )
  
dev.off()  
 