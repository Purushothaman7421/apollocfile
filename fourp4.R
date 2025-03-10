# Data for Histogram
data <- data.frame(Value = c(5, 7, 7, 8, 9, 12, 14, 15, 18, 19, 19, 20, 22, 22, 23, 25, 25, 30))

# Histogram
ggplot(data, aes(x=Value)) +
  geom_histogram(binwidth=2, fill="skyblue", color="black", alpha=0.7) +
  theme_minimal() +
  labs(title="Histogram", x="Value", y="Frequency")