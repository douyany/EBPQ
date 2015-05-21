# in addition to counting the number of forms each month,
# this graph also displays the forms where the minimum standard dataset 
# is not available 

# read in the data
mdata <- read.table("h://prep_ebpq//reports//20150420_why_not_a_match_in_ebpq_orc.csv",
  header=TRUE, sep=",")

barplot(mdata$Amt, main="Overlap between ORC and EBPQ Respondents", 
  	xlab="Reason")
	
barplot(mdata$Amt, main="Overlap between ORC and EBPQ Respondents", 
  	xlab="Reason", legend.text=mdata$Reason, col = rainbow(20))	

 ##saves file as pdf
pdf(file="h://prep_ebpq//reports//20150420_overlap_in_IDs_bet_ORC_EBPQ.pdf", paper="letter", height = 10) 
	
bp<- barplot(mdata$Amt, main="Overlap between ORC and EBPQ Respondents", 
  	xlab="Reason", legend.text=mdata$Reason, col = rainbow(5),
	args.legend = list(x = "topleft", bty = "o", inset=c(0.05, 0))
		)
text(bp, 0, round(mdata$Amt, 1),cex=1,pos=3)		
	
dev.off()
