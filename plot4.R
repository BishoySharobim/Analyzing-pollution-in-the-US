
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
  
#Plot 4
  
  SCCofcoalrelatedsources <- SCC[grep("[Cc]oal", SCC[,3]),1]
  
  NEIforcoalsources <- NEI[NEI$SCC %in% SCCofcoalrelatedsources, ]
  
  #LESSON: Can't use NEI$SCC == SCCofcoalrelatedsources
  
  sum2 <- tapply(NEIforcoalsources$Emissions, NEIforcoalsources$year, sum)
  
  #Plot
  {
    png(filename = "plot4.png", width = 600, height = 480, units = "px")  
  
    par(mar=c(4,4,1,1))
    plot(names(sum2), sum2, xlab = "Year", ylab = "Amount of tonnes")
    title(main = expression(paste("Total coal combustion-related emissions of ", PM[2.5], " in the US from 1999 to 2008")))
    lines(names(sum2),sum2)
  }
  
  dev.off()
  