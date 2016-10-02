## This program assumes the following has already been run via
## SetupWeek4.R :
## NEI <- readRDS("summarySCC_PM25.rds")
## SCC <- readRDS("Source_Classification_Code.rds")
require(ggplot2)

sub4 <- subset(NEI, fips == "06037" & type=="ON-ROAD")
lamot.sources <- aggregate(sub4[c("Emissions")], list(type = sub4$type, year = sub4$year, zip = sub4$fips), sum)
comp.mv <- rbind(baltmot.sources, lamot.sources)

qplot(year, Emissions, data = comp.mv, color = zip, geom= "line", ylim = c(-100, 5500)) +
  ggtitle("Motor Vehicle Emissions in Baltimore vs. Los Angeles") +
  xlab("Year") + ylab("Emission Levels")  