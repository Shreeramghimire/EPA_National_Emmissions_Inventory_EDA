
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")


vehicle_scc <- SCC[grepl("vehicle", SCC$SCC.Level.Two, ignore.case = TRUE), "SCC"]


baltimore_vehicle <- NEI[NEI$fips == "24510" & NEI$SCC %in% vehicle_scc, ]


balt_vehicle_emissions <- aggregate(Emissions ~ year, baltimore_vehicle, sum)


png("plot5.png", width = 480, height = 480)


plot(balt_vehicle_emissions$year, balt_vehicle_emissions$Emissions, 
     type = "b", 
     col = "green", 
     lwd = 2,
     xlab = "Year", 
     ylab = "PM2.5 Emissions (tons)",
     main = "Baltimore City Motor Vehicle PM2.5 Emissions (1999-2008)",
     xaxt = "n")
axis(1, at = balt_vehicle_emissions$year)


dev.off()
