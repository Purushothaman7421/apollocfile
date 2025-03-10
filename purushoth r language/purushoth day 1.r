x<-c(1,2,4)
print(x[2])
#raw data
raw_data<-charToRaw("hello world")
print(raw_data)

x<-c(1,2,4,5,6,7,8,3);x[1:5];print(x)
y<-c("hello its me");y[1:4];print(y)

#mean and sd
z<-c(1,5,7,8,54,23,4,5)
mean(x)
mean(z)
sd(x);sd(z)



#Changing Value of Variables
x <- c(5,12,13)
 length(x)

 #Data Frames
 print("***** #Data Frames*******")
d <- data.frame(list(kids=c("Jack","Jill"),ages=c(12,10),qualification=c(6,5)))
 
 print(d$ages)
 print(d$qualification)
 
 print("************")


 print("*******cat()   *****")