# Load necessary libraries
library(ggplot2)
library(dplyr)

# Sample Website Traffic Data
traffic_data <- data.frame(
  Date = seq.Date(from=as.Date("2023-01-01"), by="week", length.out=12),
  Traffic = c(1500, 1800, 1700, 2100, 2200, 2500, 2400, 2300, 2600, 2800, 3000, 3100),
  ConversionRate = c(0.02, 0.025, 0.03, 0.022, 0.027, 0.03, 0.035, 0.04, 0.038, 0.045, 0.048, 0.05)
)

# 1. Line Plot (Traffic Over Time)
traffic_plot <- ggplot(traffic_data, aes(x=Date, y=Traffic)) +
  geom_line(color="green", size=1) +
  theme_minimal() +
  labs(title="Website Traffic Over Time", x="Date", y="Traffic")

# 2. Scatter Plot (Traffic vs Conversion Rate)
conversion_plot <- ggplot(traffic_data, aes(x=Traffic, y=ConversionRate)) +
  geom_point(color="orange") +
  theme_minimal() +
  labs(title="Traffic vs Conversion Rate", x="Traffic", y="Conversion Rate")

# 3. Line Plot (Conversion Rate Over Time)
conversion_rate_plot <- ggplot(traffic_data, aes(x=Date, y=ConversionRate)) +
  geom_line(color="blue", size=1) +
  theme_minimal() +
  labs(title="Conversion Rate Over Time", x="Date", y="Conversion Rate")

# Arrange all plots on one page
grid.arrange(traffic_plot, conversion_plot, conversion_rate_plot, ncol=2)