analysis<-function(){
        
#Start-of-Part1---------------------------------------------
library(plyr)
library(tidyr)
lenka<-read.table("./UCI_HAR_Dataset/train/X_train.txt")
X_train<-tbl_df(lenka)
rm("lenka")
lenka<-read.table("./UCI_HAR_Dataset/test/X_test.txt")
X_test<-tbl_df(lenka)
rm("lenka")
X_train<-mutate(X_train,origin="train")
X_test<-mutate(X_test,origin="test")
X_join<-rbind(X_train,X_test)

lenka<-read.table("./UCI_HAR_Dataset/train/y_train.txt")
y_train<-tbl_df(lenka)
rm("lenka")
lenka<-read.table("./UCI_HAR_Dataset/test/y_test.txt")
y_test<-tbl_df(lenka)
rm("lenka")
y_train=mutate(y_train,origin="train")
y_test=mutate(y_test,origin="test")
y_join<-rbind(y_train,y_test)

lenka<-read.table("./UCI_HAR_Dataset/train/subject_train.txt")
subject_train<-tbl_df(lenka)
rm("lenka")
lenka<-read.table("./UCI_HAR_Dataset/test/subject_test.txt")
subject_test<-tbl_df(lenka)
rm("lenka")
subject_train=mutate(subject_train,origin="train")
subject_test=mutate(subject_test,origin="test")
subject_join<-rbind(subject_train,subject_test)

#features vector
lenka<-read.table("./UCI_HAR_Dataset/features.txt")
features<-tbl_df(lenka)
rm("lenka")

#End-of-Part1------------------------------------------------------------

#Start-of-Part2------------------------------------------------------------

# rename as untidy names from features for X_join
choose<-select(features,V2)
eat<-lapply(choose,as.character)
names(X_join)<-c(eat$V2[],"origin")
rm("eat")
rm("choose")

# tidy the new names in X_join

names(X_join)<-gsub("[[:punct:]]",".",names(X_join))
names(X_join)<-gsub("BodyBody","Body",names(X_join))

# picking only mean and std

temp1<-X_join[,grep("mean",names(X_join))]
temp2<-X_join[,grep("std",names(X_join))]
temp3<-X_join[,grep("origin",names(X_join))]
sX_join<-cbind(temp1,temp2,temp3)
rm("temp1")
rm("temp2")
rm("temp3")

#  attach activity joined vector
temp<-select(y_join,V1)
sX_join<-cbind(temp,sX_join)
rm("temp")
sX_join<-dplyr::rename(sX_join,activity=V1)

temp<-select(subject_join,V1)
sX_join<-cbind(temp,sX_join)
rm("temp")
sX_join<-dplyr::rename(sX_join,subject=V1)

# create name vector without subject activity and origin

name_without<-select(sX_join,-cbind(subject,activity,origin))

#End-of-Part2------------------------------------------------------------

#Start-of-Part3------------------------------------------------------------

# melt data to prepare it into the shape that is good for mean calculation (m as melted in sX_joint)

msX_join<-melt(sX_join,id=c("origin","subject","activity"),measure.vars=c(names(name_without)))

# almost variable produces the table we want up to the naming of rows in the "activity" column
almost<-dcast(msX_join,origin+subject+activity~variable,mean)

# rename "activity" column in the almost

act_labels<-read.table("./UCI_HAR_Dataset/activity_labels.txt")

for(i in 1:6){almost$activity[]<-gsub(as.character(i),act_labels$V2[i],almost$activity[])}

# checking whether in almost there are any NA values

na.test <-  function (x) {
          w <- sapply(x, function(x)all(is.na(x)))
          if (any(w)) {
                     stop(paste("All NA in columns", paste(which(w), collapse=", ")))
                   }
         }

na.test(almost)
# almost is final

final<-almost

write.table(final,file="Clean_data_averages.txt",row.name=FALSE)

#End-of-Part3------------------------------------------------------------

}