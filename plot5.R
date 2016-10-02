## This program assumes the following has already been run via
## SetupWeek4.R :
## NEI <- readRDS("summarySCC_PM25.rds")
## SCC <- readRDS("Source_Classification_Code.rds")
require(ggplot2)

sub3 <- subset(NEI, fips == "24510" & type=="ON-ROAD")
baltmot.sources <- aggregate(sub3[c("Emissions")], list(type = sub3$type, year = sub3$year, zip = sub3$fips), sum)

ggplot(data = baltmot.sources, aes(x=year, y=Emissions)) +
  geom_bar(stat = "identity", position = "dodge") +
  ggtitle("Motor Vehicle-Related Emissions in Baltimore, MD")
