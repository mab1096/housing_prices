rm(list=ls())

#1
data<- read.csv(file.choose(), header=FALSE)
View(data)


data1981<- subset(data, data[,1]==1981)
View(data1981)

lprice <- data1981$V16
ldist <- data1981$V14
reg <- lm(lprice~ldist)
summary(reg)


#2
#HPRICE
data<- read.csv(file.choose(), header=FALSE)
View(data)

loglotsize <- data$V9
logsqrft <- data$V10
bdrms <- data$V3
logprice <- data$V7

reg <- lm(logprice~loglotsize + logsqrft + bdrms)
summary(reg)
