
library(ggplot2)


NEI <- readRDS("summarySCC_PM25.rds")


baltimore_data <- NEI[NEI$fips == "24510", ]
baltimore_by_type <- aggregate(Emissions ~ year + type, baltimore_data, sum)


png("plot3.png", width = 600, height = 480)


g <- ggplot(baltimore_by_type, aes(x = year, y = Emissions, color = type)) +
  geom_line(size = 1) +
  geom_point(size = 2) +
  labs(title = "Baltimore City PM2.5 Emissions by Type (1999-2008)",
       x = "Year",
       y = "PM2.5 Emissions (tons)",
       color = "Source Type") +
  theme_minimal()

print(g)


dev.off()
