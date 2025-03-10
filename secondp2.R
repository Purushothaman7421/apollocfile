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
