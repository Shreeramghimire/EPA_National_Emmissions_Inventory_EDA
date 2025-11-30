
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")


coal_scc <- SCC[grepl("coal", SCC$Short.Name, ignore.case = TRUE) & 
                  grepl("comb", SCC$Short.Name, ignore.case = TRUE), "SCC"]


coal_data <- NEI[NEI$SCC %in% coal_scc, ]


coal_emissions <- aggregate(Emissions ~ year, coal_data, sum)


png("plot4.png", width = 480, height = 480)


plot(coal_emissions$year, coal_emissions$Emissions/1000, 
     type = "b", 
     col = "purple", 
     lwd = 2,
     xlab = "Year", 
     ylab = "PM2.5 Emissions (thousand tons)",
     main = "US Coal Combustion-Related PM2.5 Emissions (1999-2008)",
     xaxt = "n")
axis(1, at = coal_emissions$year)


dev.off()
