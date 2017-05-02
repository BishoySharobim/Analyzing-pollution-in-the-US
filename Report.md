# Report

### Have total emissions from $PM_{2.5}$ decreased in the United States from 1999 to 2008?
Using the base plotting system, I made a plot in plot1.R showing the total sum $PM_{2.5}$ emissions from all sources for each of the years 1999, 2002, 2005, and 2008. Looking at plot1.png, I conclude that total emissions went down significantly from 1999 to 2002, took a slight drop from 2002 to 2005, and then a significant drop from 2005 to 2008.

### Have total emissions from $PM_{2.5}$ decreased in the Baltimore City, Maryland from 1999 to 2008?
The fips number referring to Baltimore City, Maryland is 24510. Using this information and a base plotting system, I made a plot in plot2.R. Looking at plot2.png, I conclude that total emissions in Baltimore City, Maryland went down somewhat from 1999 to 2002, went back up at 2005 - almost back to the same level it was at in 1999. Then from 2005 to 2008, the pollutant level took a massive drop down.

### Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999-2008 for Baltimore City? Which have seen increases in emissions from 1999-2008?
Using the ggplot2 plotting system, I made a plot in plot3.R.  Looking at plot3.png for emissions produced by the four types of sources indicated across 1999, 2002, 2005 and 2008, all of them have seen decreases of emissions from one year to the next year. Only non-road and point have seen increases in a duo of adjacent years. 

Note, non-point emissions saw such an extremely little increase from 2002 to 2005 that it is almost negligible. Point emissions are the only sources that have seen sharp increases in emissions, which was from 1999 to 2005, and a sharp decrease from 2005 to 2008. Yet, by 2008 it still remained higher than its 1999 record.

### Across the United States, how have emissions from coal combustion-related sources changed from 1999- 2008?
Using the base plotting system, I made a plot in plot4.R. Looking at plot4.png, emissions from coal combustion-related sources have dropped a little bit from 1999 to 2002, gone up at a smaller increment from 2002 to 2005 and dropped drastically from 2005 to 2008.

### How have emissions from motor vehicle sources changed from 1999-2008 in Baltimore City? Compare this to emissions from motor vehicle sources in Los Angeles, California. Which city has seen greater changes over time in motor vehicle emissions?
The fips number referring to Los Angeles is 06037.  Using this information alongside the ggplot2 plotting system, I produced a plot5.R. Looking at plot5.png, emissions from motor vehicle sources in Baltimore City have generally decreased in small increments from 1999 to 2008. For Los Angeles, it has steadily and linearly increased from 1999 to 2005, but dropped from 2005 to 2008 yet still remained somewhat above the 1999 level. 

Comparing the emissions from both cities over the whole 9 year period, Los Angeles has seen an overall small percentage increase in emissions (< 50%), while Baltimore City has seen around an overall 50% total decrease. Thus Baltimore City has seen greater changes over time in motor vehicle emissions.
