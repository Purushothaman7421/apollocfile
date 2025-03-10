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