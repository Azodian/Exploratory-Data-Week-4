## This program assumes the following has already been run via
## SetupWeek4.R :
## NEI <- readRDS("summarySCC_PM25.rds")
## SCC <- readRDS("Source_Classification_Code.rds")

require(ggplot2)
ggplot(data=baltimore, aes(x=year, y=Emissions, fill=type)) +    
  geom_bar(stat="identity", position="dodge") +
  ggtitle("Baltimore, MD Emission by Type")