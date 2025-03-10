print("*******R Control Structures*****")
x <- 3
# check if x is greater than 0
if (x > 0) {
print("The number is positive")
}
print("Outside if statement")

print("************")

print("****** ******")
y <- c("what","is","Truth")
if("Truth" %in% y)
{
print("Truth is found")
}else{
print("Truth is not found")}
#R if...else if...else Statement
print("************")

print("******akka sum ******")

a<-5
b<-4
c<-3
if((a>b) & (b>c) &(c>a) ){
print("grater")
}

print("******#REPEAT LOOP ******")
x = 1
# Repeat loop
repeat {
print(paste ("x=",x))
# Break statement to terminate if x > 4
if (x > 4) {
    break
}
# Increment x by 1
x = x + 1
}
