## This program assumes the following has already been run via
## SetupWeek4.R :
## NEI <- readRDS("summarySCC_PM25.rds")
## SCC <- readRDS("Source_Classification_Code.rds")

baltimore<-subset(NEI, NEI$fips==24510)
totalBaltimore<-tapply(baltimore$Emissions, INDEX=baltimore$year, sum)
barplot(totalBaltimore, main="Total Emissions from PM2.5 in Baltimore, MD", xlab="Year", ylab="Emissions")