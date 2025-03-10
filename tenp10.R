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