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