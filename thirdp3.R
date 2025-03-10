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