  
#Have total emissions from $PM_{2.5}$ decreased in the United States from 1999 to 2008? 

#Downloading and unzipping files
  {
  if(!file.exists("Data.zip")){
    download.file(url= "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip", destfile = "Data.zip")
  }
  
  if(!file.exists("./Data")) {       
    unzip(zipfile="Data.zip", exdir=".")
  }
  }

#Reading in data
  {
  if(!exists("NEI")){
    NEI <- readRDS("summarySCC_PM25.rds")
  }
  SCC <- readRDS("Source_Classification_Code.rds")
  }

#Q1 plot
  NEI[NEI$year==1999 & NEI$SCC == 10100401,]
  sum <- tapply(NEI$Emissions, NEI$year, sum)

#Plot
  {
  par(mar=c(4,4,1,1))
  plot(names(sum),sum, xlab = "Year", ylab = "Amount of tonnes")
  title(main = expression(paste("Total Emissions of ", PM[2.5], " in the US  from 1999 to 2008")))
  lines(names(sum),sum)
}

  dev.copy(png, file="plot1.png")
  dev.off()
