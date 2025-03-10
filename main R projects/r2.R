# Load necessary libraries
library(ggplot2)
library(dplyr)
library(lubridate)

# Sample Sales Data
sales_data <- data.frame(
  Date = seq.Date(from=as.Date("2023-01-01"), by="month", length.out=12),
  Region = rep(c("North", "South", "East", "West"), each=3),
  Sales = c(2000, 2500, 2200, 1800, 2300, 2100, 2400, 2600, 2500, 2700, 3000, 3100)
)

# 1. Time Series Plot (Sales over Time)
time_series_plot <- ggplot(sales_data, aes(x=Date, y=Sales, color=Region)) +
  geom_line(size=1) +
  theme_minimal() +
  labs(title="Sales Over Time", x="Month", y="Sales") +
  scale_x_date(date_labels="%b %Y", date_breaks="1 month")

# 2. Bar Plot (Sales by Region)
region_sales_plot <- ggplot(sales_data, aes(x=Region, y=Sales, fill=Region)) +
  geom_bar(stat="identity") +
  theme_minimal() +
  labs(title="Sales by Region", x="Region", y="Sales")

# 3. Box Plot (Sales Distribution by Region)
box_plot <- ggplot(sales_data, aes(x=Region, y=Sales, fill=Region)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title="Sales Distribution by Region", x="Region", y="Sales")

# Arrange all plots on one page
library(gridExtra)
grid.arrange(time_series_plot, region_sales_plot, box_plot, ncol=2)