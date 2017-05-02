
#Downloading and unzipping files
  {setwd("C:/Users/User/Desktop/Cabinet/Career/Data Analysis/R/Coursera/4) Exploratory Data Analysis/Week 4/Assignment")
  
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

#Q2 plot
  Baltimorecitydata <- NEI[NEI$'fips' == 24510, ]
  head(Baltimorecitydata)
  
  sum1 <- tapply(Baltimorecitydata$Emissions, Baltimorecitydata$year, sum)
  
  #plot
  {
    par(mar=c(4,4,1,1))
    plot(names(sum1),sum1, xlab="Year", ylab = "Amount of tonnes")
    lines(names(sum1),sum1)
    title(main = expression(paste("Total Emissions of ", PM[2.5], " in Baltimore City from 1999 to 2008")))
  }
  
  dev.copy(png, file="plot2.png")
  dev.off()
  
  #Down from 1999 to 2002, up for 2005, down for 2008.