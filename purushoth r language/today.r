# Load necessary libraries
library(ggplot2)
library(dplyr)
library(lubridate)
library(tidyr)
library(cluster)
library(factoextra)

# 1. Create Synthetic Customer Data
set.seed(123)

# Customer demographics
customer_data <- data.frame(
  CustomerID = 1:1000,
  Age = sample(18:70, 1000, replace=TRUE),
  Gender = sample(c("Male", "Female"), 1000, replace=TRUE),
  Region = sample(c("North", "South", "East", "West"), 1000, replace=TRUE),
  MonthlyIncome = sample(2000:10000, 1000, replace=TRUE),
  DateOfBirth = sample(seq(as.Date('1950/01/01'), as.Date('2000/01/01'), by="day"), 1000, replace=TRUE)
)

# Customer purchases
purchase_data <- data.frame(
  CustomerID = sample(1:1000, 1000, replace=TRUE),
  ProductCategory = sample(c("Electronics", "Fashion", "Home & Kitchen", "Books", "Beauty"), 1000, replace=TRUE),
  PurchaseAmount = round(runif(1000, min=50, max=500), 2),
  PurchaseDate = sample(seq(as.Date('2023-01-01'), as.Date('2023-12-31'), by="day"), 1000, replace=TRUE)
)

# 2. Data Preprocessing

# Merge customer and purchase data
full_data <- merge(customer_data, purchase_data, by="CustomerID")

# Convert DateOfBirth to age
full_data$Age <- as.numeric(difftime(Sys.Date(), full_data$DateOfBirth, units = "weeks")) / 52.25

# Filter out unrealistic ages (e.g., above 70)
full_data <- full_data %>% filter(Age >= 18 & Age <= 70)

# 3. Data Analysis

# Total Purchase Amount by Region
region_sales <- full_data %>% 
  group_by(Region) %>%
  summarise(TotalSales = sum(PurchaseAmount), 
            AvgPurchase = mean(PurchaseAmount),
            TotalCustomers = n_distinct(CustomerID))

# Total Purchase by Product Category
category_sales <- full_data %>% 
  group_by(ProductCategory) %>%
  summarise(TotalSales = sum(PurchaseAmount), 
            AvgPurchase = mean(PurchaseAmount))

# 4. Customer Segmentation using K-means Clustering
# Using Age and MonthlyIncome for clustering

customer_segmentation <- full_data %>% 
  select(CustomerID, Age, MonthlyIncome) %>%
  distinct()

# Normalize data
scaled_data <- scale(customer_segmentation[,2:3])

# Perform k-means clustering (choosing 4 clusters)
set.seed(123)
kmeans_result <- kmeans(scaled_data, centers=4, nstart=25)

# Add cluster labels to the data
customer_segmentation$Cluster <- kmeans_result$cluster

# 5. Data Visualization

# 5.1 Total Sales by Region (Bar Plot)
region_sales_plot <- ggplot(region_sales, aes(x=Region, y=TotalSales, fill=Region)) +
  geom_bar(stat="identity") +
  theme_minimal() +
  labs(title="Total Sales by Region", x="Region", y="Total Sales")

# 5.2 Average Purchase by Product Category (Bar Plot)
category_sales_plot <- ggplot(category_sales, aes(x=ProductCategory, y=AvgPurchase, fill=ProductCategory)) +
  geom_bar(stat="identity") +
  theme_minimal() +
  labs(title="Average Purchase by Product Category", x="Product Category", y="Average Purchase")

# 5.3 Gender Distribution (Pie Chart)
gender_distribution <- full_data %>%
  group_by(Gender) %>%
  summarise(Count = n_distinct(CustomerID))

gender_pie_plot <- ggplot(gender_distribution, aes(x="", y=Count, fill=Gender)) +
  geom_bar(stat="identity", width=1) +
  coord_polar(theta="y") +
  theme_minimal() +
  labs(title="Gender Distribution of Customers") +
  theme(axis.text.x=element_blank())

# 5.4 Scatter Plot (Age vs Purchase Amount)
age_purchase_plot <- ggplot(full_data, aes(x=Age, y=PurchaseAmount, color=Region)) +
  geom_point(alpha=0.5) +
  theme_minimal() +
  labs(title="Age vs Purchase Amount", x="Age", y="Purchase Amount")

# 5.5 Customer Segmentation (Cluster Plot)
segmentation_plot <- ggplot(customer_segmentation, aes(x=Age, y=MonthlyIncome, color=as.factor(Cluster))) +
  geom_point() +
  theme_minimal() +
  labs(title="Customer Segmentation", x="Age", y="Monthly Income", color="Cluster")

# Arrange all plots on one page
library(gridExtra)
grid.arrange(region_sales_plot, category_sales_plot, gender_pie_plot, age_purchase_plot, segmentation_plot, ncol=2)

# 6. Conclusion
# Based on the analysis, you can draw conclusions about:
# - Regions with the highest sales
# - Product categories that generate the most revenue
# - Customer segmentation based on demographics for targeted marketing