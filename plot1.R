## This program assumes the following has already been run via
## SetupWeek4.R :
## NEI <- readRDS("summarySCC_PM25.rds")
## SCC <- readRDS("Source_Classification_Code.rds")

totalNEI<-tapply(NEI$Emissions, INDEX=NEI$year, sum)
barplot(totalNEI, main = "Total Emissions from PM2.5", xlab="Year", ylab="Emissions")