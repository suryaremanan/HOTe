rm(list=ls())
# Solution 2==========================================================
x=data.frame(Group1=c(0,0,0,0,0,0,1,1,1,16),
             Group2=c(3,12,3.5,14,3,2.8,5,9,5.5,9),
             Group3=c(14,9.5,4.5,7.5,5,2,4.8,3.6,6,8.5),
             Group4=c(9,4.5,9,8,4,6,5,3.5,2.8,12),
             Group5=c(16,12,6.5,1,11,5,3,8,3,4),
             Group6=c(13,10,10,1,3,4,6,3.8,4,8) )
View(x)
# 2 (a) --------------------------------------------------------------
grpsmean=apply(x,2,mean)# average in each group
grpsmean
#2 (b)----------------------------------------------------------------
grpsmedian=apply(x,2,median)#median in each group
grpsmedian
#2 (c)----------------------------------------------------------------
m=as.matrix(x)#conversion of dataframe into matrix
m
avgexp=mean(m)#average experience across all groups
avgexp
#2 (d)----------------------------------------------------------------
avgtotal=mean(grpsmean)
avgtotal#average of each group average
#average of each group average is same as the grand average 
#2 (d)----------------------------------------------------------------
grpnew5=c(Group5,17)
grpnew5
mean(grpnew5)
#2 (e)----------------------------------------------------------------
grpnew6=c(Group6,20)
grpnew6
median(grpnew6)

#Solution 3 ==========================================================

delivery=read.csv(file="/Users/surya/Desktop/batch_47/deliveryserivces.csv",sep=",",header=T)
delivery
mean(as.matrix(delivery))
median(as.matrix(delivery))
mode(as.matrix(delivery))
sd(as.matrix(delivery))

boxplot(delivery$EagleBoys,col="red",xlab = "Eagle Boys",ylab="Delivery Time",main="Boxplot for delivery time of  Eagle Boys ")
boxplot(delivery$FoodPanda,col="yellow",xlab = "Food Panda",ylab="Delivery Time",main="Boxplot for delivery time of  Food panda ")
boxplot(delivery$Swiggy,col="blue",xlab = "Swiggy",ylab="Delivery Time",main="Boxplot for delivery time of  Swiggy ")
boxplot(delivery$Dominos,col="green",xlab = "dominos",ylab="Delivery Time",main="Boxplot for delivery time of  dominos ")
boxplot(delivery$PiazzaHut,col="purple",xlab="Pizza Hut",ylab="Delivery Time",main="Boxplot for delivery time of Pizza hut")
boxplot(as.matrix(delivery),col=c("red","yellow","blue","green","purple"),ylab="Delivery time",main="Boxplot for delivery time")

#Solution 4 ==========================================================
x = c(15,21,20,20,20)
y = c(30,25,12,35,0)
worker = data.frame(x,y)
rownames(worker)= c("Mon","Tue","Wed","Thu","Fri")
colnames(worker)= c("Philip","Mathews")
worker

mean_Philip=mean(worker$Philip)
mean_Philip
mean_Mathews=mean(worker$Mathews)
mean_Mathews
median_Philip=median(worker$Philip)
median_Philip
median_Mathews=median(worker$Mathews)
median_Mathews
range1=max(worker$Philip)-min(worker$Philip)
range1
range2=max(worker$Mathews)-min(worker$Mathews)
range2

#Solution 5 =========================================================
fruits = c("apples","apples","apples","grapes","mangoes")
table(fruits)
names(which.max(table(fruits)))

#Solution 6 ==========================================================
scores = c(11, 7.5, 8.5, 10, 10, 10.5, 5.5, 10, 9, 9.5, 5.25, 8, 6.5, 10.5, 8.75, 0, 6, 6, 6.75,8.75, 0, 9.5, 7.5, 8.5, 7) 
range(scores)
sd(scores)
length(scores)
s_scores=sort(scores)
q_1=s_scores[1:12]
q_1
median(q_1)
median(scores)
quartiles = quantile(x = scores,probs = c(0.25,0.5,0.75))
quartiles
quantile(scores)
boxplot(scores,ylab="scores",main="boxplot of scores ",col="purple")
#Solution 7===========================================================
supplier1 = c(17,22,22,22,27)
supplier2=c(17,19,20,27,27)
(suppliers = data.frame(supplier1,supplier2))

## ------------------------------------------------------------------------
range_supplier1 = range(suppliers$supplier1)
range_supplier2 = range(suppliers$supplier2)
range_supplier1
range_supplier2

## ------------------------------------------------------------------------
mean_supplier1 = mean(suppliers$supplier1)
mean_supplier2 = mean(suppliers$supplier2)
mean_supplier1
mean_supplier2

## ------------------------------------------------------------------------
sd_supplier1 = sd(suppliers$supplier1)
sd_supplier2 = sd(suppliers$supplier2)
sd_supplier1
sd_supplier2
## First supplier is more consistent
#Solution 8==========================================================
d=c(seq(1,100))
d
mean(d)
median(d)
---------------------------------------------------------------------
e=c(12,13,15,32,24,53,45,78,91)
e
mean(e)
median(e)
---------------------------------------------------------------------
f=sample.int(20:40,size = 10,replace = T)
f
mean(f)
median(f)
#Solution 9==========================================================
mtcars
dim(mtcars)
str(mtcars)
num_data=data.frame(mtcars)
num_data
