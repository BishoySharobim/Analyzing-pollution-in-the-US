#Downloading and unzipping files
  
  if(!file.exists("Data.zip")){
    download.file(url= "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip", destfile = "Data.zip")}
  
  if(!file.exists("./Data")) {       
    unzip(zipfile="Data.zip", exdir=".")}


#Reading in data
  
  if(!exists("NEI")){
    NEI <- readRDS("summarySCC_PM25.rds")}

  SCC <- readRDS("Source_Classification_Code.rds")
  
    
#Q3 plot
  
  library(ggplot2)
  library(plyr)
  source("plot2.R")
  
  groupColumns = c("year", "type")
  dataColumns = c("Emissions")
  sum0 = ddply(Baltimorecitydata, groupColumns, function(x) colSums(x[dataColumns]))
  head(sum0)
  
   
  par(mar=c(3,3,1,3))
  
  png(filename = "plot3.png", width = 800, height = 480, units = "px")  
  
  qplot(year, 
        Emissions,
        data= sum0, 
        facets= .~ type,
        main= expression(paste("Total Emissions of ", PM[2.5], " in the US from 1999 to 2008 for a given type of source")),
        color = type,
        ylab=expression("Total Emissions, PM"[2.5]),
        geom=c("point", "line"))

    
  dev.off()
  
