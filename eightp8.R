# Data for Heatmap
set.seed(123)
data <- matrix(rnorm(100), nrow=10, ncol=10)

# Heatmap
library(ggplot2)
library(reshape2)
data_melted <- melt(data)

ggplot(data_melted, aes(Var1, Var2, fill=value)) +
  geom_tile() +
  scale_fill_gradient(low="white", high="blue") +
  theme_minimal() +
  labs(title="Heatmap", x="Column", y="Row")