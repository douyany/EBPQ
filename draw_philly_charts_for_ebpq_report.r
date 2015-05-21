# read in the data
mdata <- read.table("c://users//doy13//Desktop//philly_ebpas.csv",
  header=TRUE, sep=",")

 # add factors for county names
mdata$MeasureNum<-factor(mdata$MeasureNum,
 levels = c(1,2,3,4,5),
 labels = c("Requirements","Appeal","Openness","Divergence","Total"))

 
 ### add colors to bars
cols<-c("yellow", "blue")[(mdata$MeasureNum=="Total") +1] 
 
 # load lattice library 
library(lattice)

##multiply by 100
## to make it look like the other graph
mdata$MeanNum<-mdata$MeanNum*100 

 ##saves file as pdf
jpeg(file="c://users//doy13//Desktop//philly_ebpas_graph.jpg") 

bp<- barplot(mdata$MeanNum, main="Philadelphia EBPAS Subscales and Total", 
  	xlab="Which Measure", col=cols, names.arg=c("Requirements","Appeal","Openness","Divergence","Total"),
	ylab="Mean for Measure", ylim=c(0,4), axes=FALSE 
		)
axis(side=2, at=c(0,1,2,3,4), labels=c("Not at All", "Slight", "Moderate", "Great", "Very Great"))

## border around the graph
box(which="figure", lty = "solid", col = "black")

dev.off()

##names.arg=c("Requirements","Appeal","Openness","Divergence","Total")


#####
#####
#####Draw Barplot for Philly results for sources of information
#####about EBP's
#####

# info sources for EBP   
# read in the data
mdata3 <- read.table("c://users//doy13//Downloads//dotplot_20150417_what_info_source.csv",
  header=TRUE, sep=",")
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

###use the observations where the county is Philly
phmdata3<-mdata3[mdata3$County_ID=="Philadelphia",]


###, oma=c(3,1,0,0)
 ##saves file as pdf
jpeg(file="c://users//doy13//Desktop//philly_ebp_infosource_graph.jpg", height=480) 
jpeg(file="h://prep_ebpq//reports//philly_ebp_infosource_graph.jpg", height=480) 

####set margins
par(mar=c(10,4,4,2)) 

bp<- barplot(phmdata3$PctYes, main="Philadelphia EBP Sources of Information", 
  	names.arg=c("Department list",
 "United Way 211",
 "Search engines",
 "Yellow pages",
 "White pages",
 "Personal list",
 "Co-workers",
 "Resource coord",
 "Supervisor",
 "Other"), col=rainbow(10),
	ylab="Mean for Information Source", ylim=c(0,100), las=2
		)


## border around the graph
box(which="figure", lty = "solid", col = "black")

dev.off()

##xlab="Which Source", 