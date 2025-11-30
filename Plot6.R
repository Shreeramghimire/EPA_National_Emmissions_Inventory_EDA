
library(ggplot2)


NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")


vehicle_scc <- SCC[grepl("vehicle", SCC$SCC.Level.Two, ignore.case = TRUE), "SCC"]


cities_data <- NEI[(NEI$fips == "24510" | NEI$fips == "06037") & 
                     NEI$SCC %in% vehicle_scc, ]


cities_data$city <- ifelse(cities_data$fips == "24510", "Baltimore", "Los Angeles")


cities_emissions <- aggregate(Emissions ~ year + city, cities_data, sum)


png("plot6.png", width = 600, height = 480)


g <- ggplot(cities_emissions, aes(x = year, y = Emissions, color = city)) +
  geom_line(size = 1) +
  geom_point(size = 2) +
  labs(title = "Motor Vehicle PM2.5 Emissions: Baltimore vs Los Angeles",
       x = "Year",
       y = "PM2.5 Emissions (tons)",
       color = "City") +
  theme_minimal()

print(g)


dev.off()
