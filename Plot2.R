
NEI <- readRDS("summarySCC_PM25.rds")


baltimore_data <- NEI[NEI$fips == "24510", ]


baltimore_emissions <- aggregate(Emissions ~ year, baltimore_data, sum)


png("plot2.png", width = 480, height = 480)


plot(baltimore_emissions$year, baltimore_emissions$Emissions, 
     type = "b", 
     col = "red", 
     lwd = 2,
     xlab = "Year", 
     ylab = "Total PM2.5 Emissions (tons)",
     main = "Baltimore City PM2.5 Emissions (1999-2008)",
     xaxt = "n")
axis(1, at = baltimore_emissions$year)


dev.off()
