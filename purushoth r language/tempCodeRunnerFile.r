bar plot 


# Data for Bar Plot
data <- data.frame(
  Category = c("A", "B", "C", "D", "E"),
  Value = c(32, 45, 67, 23, 56)
)

# Bar Plot
library(ggplot2)
ggplot(data, aes(x=Category, y=Value, fill=Category)) +
  geom_bar(stat="identity") +
  theme_minimal() +
  labs(title="Bar Plot", x="Category", y="Value") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


line plot

# Data for Line Plot
data <- data.frame(
  Time = 1:10,
  Value = c(2, 3, 5, 7, 11, 13, 17, 19, 23, 29)
)

# Line Plot
ggplot(data, aes(x=Time, y=Value)) +
  geom_line(color="blue", size=1) +
  geom_point(color="red") +
  theme_minimal() +
  labs(title="Line Plot", x="Time", y="Value")

scatter plot 

# Data for Scatter Plot
set.seed(123)
data <- data.frame(
  X = rnorm(50, mean=5, sd=2),
  Y = rnorm(50, mean=10, sd=5)
)

# Scatter Plot
ggplot(data, aes(x=X, y=Y)) +
  geom_point(color="purple") +
  theme_minimal() +
  labs(title="Scatter Plot", x="X", y="Y")

histogram

# Data for Histogram
data <- data.frame(Value = c(5, 7, 7, 8, 9, 12, 14, 15, 18, 19, 19, 20, 22, 22, 23, 25, 25, 30))

# Histogram
ggplot(data, aes(x=Value)) +
  geom_histogram(binwidth=2, fill="skyblue", color="black", alpha=0.7) +
  theme_minimal() +
  labs(title="Histogram", x="Value", y="Frequency")



box plot 


# Data for Box Plot
data <- data.frame(
  Group = rep(c("A", "B", "C"), each=20),
  Value = c(rnorm(20, mean=50, sd=10), rnorm(20, mean=60, sd=15), rnorm(20, mean=70, sd=20))
)

# Box Plot
ggplot(data, aes(x=Group, y=Value, fill=Group)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title="Box Plot", x="Group", y="Value")


pie chart

# Data for Pie Chart
data <- data.frame(
  Category = c("A", "B", "C", "D"),
  Value = c(15, 35, 25, 25)
)

# Pie Chart
library(ggplot2)
ggplot(data, aes(x="", y=Value, fill=Category)) +
  geom_bar(stat="identity", width=1) +
  coord_polar(theta="y") +
  theme_minimal() +
  labs(title="Pie Chart") +
  theme(axis.text.x=element_blank())



density plot 

# Data for Density Plot
data <- data.frame(Value = rnorm(100, mean=50, sd=10))

# Density Plot
ggplot(data, aes(x=Value)) +
  geom_density(fill="lightblue", color="blue", alpha=0.5) +
  theme_minimal() +
  labs(title="Density Plot", x="Value", y="Density")



heatmap

# Data for Heatmap
set.seed(123)
data <- matrix(rnorm(100), nrow=10, ncol=10)

# Heatmap
library(ggplot2)
library(reshape2)
data_melted <- melt(data)

ggplot(data_melted, aes(Var1, Var2, fill=value)) +
  geom_tile() +
  scale_fill_gradient(low="white", high="blue") +
  theme_minimal() +
  labs(title="Heatmap", x="Column", y="Row")



area plot 

# Data for Area Plot
data <- data.frame(
  Time = 1:10,
  Value = c(3, 5, 7, 9, 12, 15, 18, 22, 26, 30)
)

# Area Plot
ggplot(data, aes(x=Time, y=Value)) +
  geom_area(fill="skyblue", alpha=0.5) +
  theme_minimal() +
  labs(title="Area Plot", x="Time", y="Value")


bubble plot 

# Data for Bubble Plot
set.seed(123)
data <- data.frame(
  X = rnorm(30, mean=10, sd=3),
  Y = rnorm(30, mean=15, sd=5),
  Size = rnorm(30, mean=5, sd=1)
)

# Bubble Plot
ggplot(data, aes(x=X, y=Y, size=Size)) +
  geom_point(alpha=0.6, color="purple") +
  theme_minimal() +
  labs(title="Bubble Plot", x="X", y="Y")

violin plot

# Data for Violin Plot
set.seed(123)
data <- data.frame(
  Group = rep(c("A", "B", "C"), each=50),
  Value = c(rnorm(50, mean=50, sd=10), rnorm(50, mean=60, sd=15), rnorm(50, mean=70, sd=20))
)

# Violin Plot
ggplot(data, aes(x=Group, y=Value, fill=Group)) +
  geom_violin() +
  theme_minimal() +
  labs(title="Violin Plot", x="Group", y="Value")

staked bar plot 


# Data for Stacked Bar Plot
data <- data.frame(
  Category = rep(c("A", "B", "C"), each=3),
  Type = rep(c("X", "Y", "Z"), 3),
  Value = c(5, 8, 3, 6, 4, 7, 8, 6, 4)
)

# Stacked Bar Plot
ggplot(data, aes(x=Category, y=Value, fill=Type)) +
  geom_bar(stat="identity") +
  theme_minimal() +
  labs(title="Stacked Bar Plot", x="Category", y="Value")






