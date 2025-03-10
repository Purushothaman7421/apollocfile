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