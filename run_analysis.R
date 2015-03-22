
#SCRIPT FOR PROCESSING DATA

setwd("~/DataScience/gettingdata/project")

library(plyr)
library(reshape2)

#Load train and tst data

sub_idx_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
labels_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
data_test<-read.table("./UCI HAR Dataset/test/X_test.txt")

sub_idx_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
labels_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
data_train<-read.table("./UCI HAR Dataset/train/X_train.txt")

variable_labels<-read.table("./UCI HAR Dataset/features.txt")


# bind data row-wise and apply the variable labels
data<-rbind(data_train, data_test)
names(data)<-variable_labels$V2


#subset the data columns with the mean and std variables
data<-data[, c(1,   2,   3,  4,  5,  6, 41, 42, 43, 44, 45, 46, 81, 82, 83, 84, 85, 86, 121 ,122 ,123 ,124 ,125 ,126 ,161 ,162 ,163 ,164 ,165 ,166 ,201 ,202 ,214 ,215 ,227 ,228 ,240 ,241 ,254 ,255 ,266 ,267 ,268 ,269 ,270 ,271 ,345 ,346 ,347 ,348 ,349 ,350 ,424 ,425 ,426 ,427 ,428 ,429 ,503 ,504 ,516 ,517 ,529 ,530 ,542 ,543)]

#work on the indices and labels
labels<-rbind(labels_train,labels_test)
activity_labels<-as.factor(labels$V1)   
activity_labels<-mapvalues(activity_labels, from = c(1,2,3,4,5,6), to = c("walking", "walking_up", "walking_down","sitting","standing", "laying"))

#another way to do it# # levels(labels_temp)<- c("walking", "walking_up", "walking_down","sitting","standing", "laying")

sub_idx<-rbind(sub_idx_train, sub_idx_test)
colnames(sub_idx)<-"subject"


data_total<-cbind(sub_idx, activity_labels, data)


names<-names(data_total)

#Create the second tidy dataset

tidy1<-melt(data_total, id=c("subject", "activity_labels"), measure.vars=c(names[3:68])) 
tidy1_mean<-dcast(tidy1, subject  + activity_labels ~variable, mean)












