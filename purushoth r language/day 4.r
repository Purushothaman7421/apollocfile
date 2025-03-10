 temp<-c(22,25,26,27,28,56,76)
 result<-barplot(temp)
 print(result)
 result<-barplot(temp,
 main="maximum temp in a week",
 xlab="degree celsius",
 ylab="day",
 names.arg=c("sun","mon","tue","wed","thu","fri","sat"),
 col="blue",
 density=20,
 horiz=FALSE)