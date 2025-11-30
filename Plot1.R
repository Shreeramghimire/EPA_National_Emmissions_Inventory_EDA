
NEI <- readRDS("summarySCC_PM25.rds")


total_emissions <- aggregate(Emissions ~ year, NEI, sum)


png("plot1.png", width = 480, height = 480)


plot(total_emissions$year, total_emissions$Emissions/1000000, 
     type = "b", 
     col = "blue", 
     lwd = 2,
     xlab = "Year", 
     ylab = "Total PM2.5 Emissions (million tons)",
     main = "Total US PM2.5 Emissions (1999-2008)",
     xaxt = "n")
axis(1, at = total_emissions$year)


dev.off()
