# GettinandCleaning
# Project

stest<-read.table("./test/subject_test.txt")
xtest<-read.table("./test/X_test.txt")
ytest<-read.table("./test/y_test.txt")
strain<-read.table("./train/subject_train.txt")
ytrain<-read.table("./train/y_train.txt")
xtrain<-read.table("./train/X_train.txt")
install.packages("dplyr")
library(dplyr)
install.packages("plyr")
library(plyr)


features<-read.table("./features.txt")

names(stest)="subject"
names(ytest)="activity"
names(xtest)<-as.character(features[,2])
names(strain)="subject"
names(ytrain)="activity"
names(xtrain)<-as.character(features[,2])

test=cbind(stest,ytest,xtest)
train=cbind(strain,ytrain,xtrain)

data=rbind(train,test)

data$activity<-as.factor(data$activity)
levels(data$activity)<-c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

sel<-c(TRUE,TRUE,rep(c(rep(TRUE,6),rep(FALSE,34)),5),rep(c(rep(TRUE,2),rep(FALSE,11)),5),rep(c(rep(TRUE,6),rep(FALSE,73)),3),rep(c(rep(TRUE,2),rep(FALSE,11)),4),rep(TRUE,6))

data<-data[,sel]

