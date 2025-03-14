# Load necessary libraries
library(ggplot2)
library(dplyr)

# Sample Customer Data
customer_data <- data.frame(
  Age = c(25, 34, 29, 42, 51, 38, 33, 45, 29, 37, 28, 40, 55, 47, 32),
  Income = c(35000, 45000, 30000, 70000, 90000, 60000, 40000, 75000, 32000, 62000, 34000, 67000, 100000, 80000, 45000),
  Spending = c(2000, 3000, 2500, 5000, 7000, 4000, 3000, 5500, 2800, 5200, 2600, 4800, 8000, 6500, 3300)
)

# 1. Scatter Plot (Income vs Spending)
scatter_plot <- ggplot(customer_data, aes(x=Income, y=Spending)) +
  geom_point(color="blue") +
  theme_minimal() +
  labs(title="Income vs Spending", x="Income", y="Spending")

# 2. Histogram (Age Distribution)
hist_age_plot <- ggplot(customer_data, aes(x=Age)) +
  geom_histogram(binwidth=5, fill="lightblue", color="black", alpha=0.7) +
  theme_minimal() +
  labs(title="Age Distribution of Customers", x="Age", y="Count")

# 3. Box Plot (Spending by Age Group)
customer_data$AgeGroup <- cut(customer_data$Age, breaks=c(20, 30, 40, 50, 60), labels=c("20-30", "30-40", "40-50", "50-60"))
box_plot <- ggplot(customer_data, aes(x=AgeGroup, y=Spending, fill=AgeGroup)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title="Spending by Age Group", x="Age Group", y="Spending")

# Arrange all plots on one page
grid.arrange(scatter_plot, hist_age_plot, box_plot, ncol=2)