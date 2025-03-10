# Create data for the graph.
geeks<- c(23, 56, 20, 63)
labels <- c("Mumbai", "Pune", "Chennai", "Bangalore")
# Plot the chart.
pie(geeks, labels)
# Create the data for the chart
A <- c(17, 32, 8, 53, 1)
# Plot the bar chart
barplot(A, xlab = "X-axis", ylab = "Y-axis", main ="Bar-Chart")




# Create a vector.
apple_colors<- c('green','green','yellow','red','red','red','green')
# Create a factor object.
factor_apple<- factor(apple_colors)
# Print the factor.
print(factor_apple)
print(nlevels(factor_apple))
[1] green green yellow red redred green