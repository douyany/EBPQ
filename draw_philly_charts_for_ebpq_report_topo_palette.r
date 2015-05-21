# read in the data
mdata <- read.table("c://users//doy13//Desktop//philly_ebpas.csv",
  header=TRUE, sep=",")

 # add factors for county names
mdata$MeasureNum<-factor(mdata$MeasureNum,
 levels = c(1,2,3,4,5),
 labels = c("Requirements","Appeal","Openness","Divergence","Total"))

 
 


 ##saves file as pdf
jpeg(file="c://users//doy13//Desktop//20150518_philly_ebpas_graph_topo.jpg") 

### with topo
bp<- barplot(mdata$MeanNum, main="Philadelphia EBPAS Subscales and Total", 
  	xlab="Which Measure", col=topo.colors(5), names.arg=c("Requirements","Appeal","Openness","Divergence","Total"),
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
jpeg(file="c://users//doy13//Desktop//philly_ebp_infosource_graph_topo.jpg", height=480) 

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
 "Other"),
	ylab="Mean for Information Source", ylim=c(0,100), las=2, col=topo.colors(10)
		)


## border around the graph
box(which="figure", lty = "solid", col = "black")

dev.off()

##xlab="Which Source", 