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