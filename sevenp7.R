# Data for Density Plot
data <- data.frame(Value = rnorm(100, mean=50, sd=10))

# Density Plot
ggplot(data, aes(x=Value)) +
  geom_density(fill="lightblue", color="blue", alpha=0.5) +
  theme_minimal() +
  labs(title="Density Plot", x="Value", y="Density")