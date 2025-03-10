# Data for Pie Chart
data <- data.frame(
  Category = c("A", "B", "C", "D"),
  Value = c(15, 35, 25, 25)
)

# Pie Chart
library(ggplot2)
ggplot(data, aes(x="", y=Value, fill=Category)) +
  geom_bar(stat="identity", width=1) +
  coord_polar(theta="y") +
  theme_minimal() +
  labs(title="Pie Chart") +
  theme(axis.text.x=element_blank())