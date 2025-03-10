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
