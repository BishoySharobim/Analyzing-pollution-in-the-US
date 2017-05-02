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
  
#Q5
  
  BaltimorecityMVs <- NEI[NEI$'fips' == "24510" & NEI$'type' == "ON-ROAD", ]
  sum3 <- tapply(BaltimorecityMVs$Emissions, BaltimorecityMVs$year, sum)
  
  californiaMVs <- NEI[NEI$'fips' == "06037" & NEI$'type' == "ON-ROAD", ]
  sum4 <- tapply(californiaMVs$Emissions, californiaMVs$year, sum)
  
  sumdf <- data.frame("year"= names(sum3), "Emissions" = c(sum3, sum4), "City" = rep(c("Baltimore City", "Los Angeles"), each=4))

  #Plot
  {
    
  library(ggplot2)
    
  png(filename = "plot5.png", width = 600, height = 480, units = "px")  
  
  #forms diagram with years on x-axis & emissions on y-axis
  ggplot(sumdf, aes(year, Emissions, group = 1)) +
      #plots points
      geom_point(aes(color = City)) +
      
      facet_grid(. ~ City, scales="free_y") +
      
      labs(x = "Year", y = expression("Total Emissions in tons of, PM"[2.5]), title="Comparing motor vehicle emissions in Baltimore City and Los Angeles from 1999-2008") +
      
      theme(plot.title=element_text(hjust=0.5)) +
      
      geom_line(aes(color=City))
  
  dev.off()
      
  }
  
