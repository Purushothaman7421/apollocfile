x <- factor(c("single", "married", "married", "single"))
print(x)
x <- factor(c("single", "married", "married", "single"), levels = c("single", "married",
"divorced"))
print(x)
x <- factor(c("single", "married", "married", "single"), levels = c("single", "married",
"divorced"))
print(x)
x[2] <- "divorced"
print(x)