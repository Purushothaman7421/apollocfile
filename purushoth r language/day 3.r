v <- c("Hello","loop")
cnt <- 2
repeat
{
print(v)
cnt <- cnt+1
if(cnt > 5)
{
break
}
}
 #print(---------------***-----------)
   x = 1
# Repeat loop
repeat {
print(x)
# Break statement to terminate if x > 4
if (x > 4) {
 break
}
# Increment x by 1
x = x + 1
}
 #print(---------------***-----------)

 dailyActivities <- c("Eat","Repeat")
cat("Initial Vector:", dailyActivities)
# change element at index 2
dailyActivities[2] <- "Sleep"
cat("\nUpdated Vector:", dailyActivities)

 #print(---------------***-----------)
 # repeat each element of vector 2 times
numbers <- rep(c(2,4,6), each = 2)
cat("\nUsing each argument:", numbers)

#print(---------------***-----------)

# Creating a sequence from 5 to 13.
v <- 5:13
print(v)
# Creating a sequence from 6.6 to 12.6.
v <- 6.6:12.6
print(v)
# If the final element specified does not belong to the sequence then it is
discarded.
v <- 3.8:11.4
print(v)

#print(---------------***-----------)

t <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat")
u <- t[c(2,3,6)]
print(u)
# Accessing vector elements using logical indexing.
v <- t[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE)]
print(v)
# Accessing vector elements using negative indexing.
x <- t[c(-2,-5)]
print(x)
# Accessing vector elements using 0/1 indexing.
y <- t[c(0,0,0,0,0,0,1)]
print(y)

#print(---------------***-----------)
list1 <- list(24, "Sabby", 5.4, "Nepal")
# access 1st item
print(list1[1]) # 24
# access 4th item
print(list1[4]) # Nepal
