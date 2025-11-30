# EPA_National_Emmissions_Inventory_EDA
## Project Overview
This project analyzes fine particulate matter (PM2.5) emissions data from the US Environmental Protection Agency (EPA) National Emissions Inventory (NEI). The analysis explores trends in PM2.5 emissions across the United States from 1999 to 2008, with specific focus on Baltimore City and Los Angeles County.

## Objectives
1. Analyze trends in PM2.5 emissions across the United States from 1999-2008

2. Examine emissions patterns in specific locations (Baltimore City and Los Angeles County)

3. Investigate emissions from different source types (point, nonpoint, on-road, non-road)

4. Compare coal combustion and motor vehicle emissions over time

## Dataset
The analysis uses two main datasets from the EPA:

1. summarySCC_PM25.rds: Contains PM2.5 emissions data for 1999, 2002, 2005, and 2008

2. Source_Classification_Code.rds: Provides mapping from source codes to actual source names

## Technical Stack
Programming Language: R

Libraries: base R, ggplot2

Data Analysis: Data aggregation, trend analysis, comparative analysis

Visualization: Base plotting system, ggplot2

## Key Findings
1. National Trends
 - Significant decrease in total PM2.5 emissions across the US from 1999 to 2008

- Coal combustion-related emissions show substantial reduction over the decade

2. Baltimore City Analysis
- Overall decrease in PM2.5 emissions with some yearly fluctuations

- Motor vehicle emissions show dramatic reduction

- Point sources increased while other source types decreased

3. Regional Comparisons
- Baltimore City shows more dramatic relative decrease in motor vehicle emissions compared to Los Angeles County

- Both cities implemented effective emissions reduction strategies for vehicles

## Results Interpretation
The analysis reveals successful environmental policies and technological improvements leading to reduced PM2.5 emissions across most categories. However, the increase in point source emissions in Baltimore suggests areas for continued regulatory focus.
