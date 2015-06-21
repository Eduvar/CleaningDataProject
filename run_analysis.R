#dplyr to use
install.packages("dplyr")
library(dplyr)

#gdata to use matchcols
install.packages("gdata")
library(gdata)

#plyr to use ddply
install.packages("plyr")
library(plyr)

#reshape2 to use melt
install.packages("reshape2")
library(reshape2)



#download file

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","Dataset.zip", method="curl")

#unzip
unzip("Dataset.zip")

#read activity labels
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt", sep=" ")

#read features (Attributes)
features<-read.table("./UCI HAR Dataset/features.txt")

#read test data
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")

#read train data
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")

#rename subject_test column
names(subject_test)[names(subject_test)=="X2"] <- "X1"

#Step 1. merge test and training data
subject<-rbind(subject_test,subject_train)
X<-rbind(X_test,X_train)
y<-rbind(y_test,y_train)

#rename X column names with features values
colnames(X)<-features$V2

#Step2. Extract only mean and std columns
X<-cbind(X[, grepl("-mean()",names(X),fixed=TRUE)],X[, grepl("std",names(X),fixed=TRUE)])

#Step 3. Uses descriptive activity names to name the activities in the data set
#merge y and activity labels data set
y<-merge(y,activity_labels,by ="V1", all=TRUE)

#rename y columns appropiately and cbind to X
names(y)[names(y)=="V1"] <- "activitykey"
names(y)[names(y)=="V2"] <- "activitydescription"

X<-cbind(X,y)

#Step 4. Appropriately labels the data set with descriptive variable names. 

#rename subject column appropiately and cbind to X
names(subject)[names(subject)=="V1"] <- "subjectkey"
X<-cbind(X,subject)

names(X)<-c( "tBodyAcc_mean_X",           "tBodyAcc_mean_Y",          
              "tBodyAcc_mean_Z",           "tGravityAcc_mean_X",       
              "tGravityAcc_mean_Y",        "tGravityAcc_mean_Z",       
              "tBodyAccJerk_mean_X",       "tBodyAccJerk_mean_Y",      
              "tBodyAccJerk_mean_Z",       "tBodyGyro_mean_X",         
              "tBodyGyro_mean_Y",          "tBodyGyro_mean_Z",         
              "tBodyGyroJerk_mean_X",      "tBodyGyroJerk_mean_Y",     
              "tBodyGyroJerk_mean_Z",      "tBodyAccMag_mean",         
              "tGravityAccMag_mean",       "tBodyAccJerkMag_mean",     
              "tBodyGyroMag_mean",         "tBodyGyroJerkMag_mean",    
              "fBodyAcc_mean_X",           "fBodyAcc_mean_Y",          
              "fBodyAcc_mean_Z",           "fBodyAccJerk_mean_X",      
              "fBodyAccJerk_mean_Y",       "fBodyAccJerk_mean_Z",      
              "fBodyGyro_mean_X",          "fBodyGyro_mean_Y",         
              "fBodyGyro_mean_Z",          "fBodyAccMag_mean",         
              "fBodyBodyAccJerkMag_mean",  "fBodyBodyGyroMag_mean",    
              "fBodyBodyGyroJerkMag_mean", "tBodyAcc_std_X",           
              "tBodyAcc_std_Y",            "tBodyAcc_std_Z",           
              "tGravityAcc_std_X",         "tGravityAcc_std_Y",        
              "tGravityAcc_std_Z",         "tBodyAccJerk_std_X",       
              "tBodyAccJerk_std_Y",        "tBodyAccJerk_std_Z",       
              "tBodyGyro_std_X",           "tBodyGyro_std_Y",          
              "tBodyGyro_std_Z",           "tBodyGyroJerk_std_X",      
              "tBodyGyroJerk_std_Y",       "tBodyGyroJerk_std_Z",      
              "tBodyAccMag_std",           "tGravityAccMag_std",       
              "tBodyAccJerkMag_std",       "tBodyGyroMag_std",         
              "tBodyGyroJerkMag_std",      "fBodyAcc_std_X",           
              "fBodyAcc_std_Y",            "fBodyAcc_std_Z",           
              "fBodyAccJerk_std_X",        "fBodyAccJerk_std_Y",       
              "fBodyAccJerk_std_Z",        "fBodyGyro_std_X",          
              "fBodyGyro_std_Y",           "fBodyGyro_std_Z",          
              "fBodyAccMag_std",           "fBodyBodyAccJerkMag_std",  
              "fBodyBodyGyroMag_std",      "fBodyBodyGyroJerkMag_std", 
              "activitykey"    ,             "activitydescription"  ,      
             "subjectkey"
  )




#Step 5. From the data set in step 4, creates a second, 
#independent tidy data set with the average of each variable for each activity and each subject.

#remove activitykey
X2<-X[,!(names(X) %in% "activitykey")]

#add new combine activity subject 
X2$activitysubject<-paste(X$activitydescription, X$subjectkey,sep="-")

#remove activity description and subject key
X2<-X2[,!(names(X2) %in% "activitydescription")]
X2<-X2[,!(names(X2) %in% "subjectkey")]

results<-merge(
ddply(X2, "activitysubject", summarise,  mean_tBodyAcc_mean_X           =mean(tBodyAcc_mean_X           )),
ddply(X2, "activitysubject", summarise,  mean_tBodyAcc_mean_Y           =mean(tBodyAcc_mean_Y           )))

results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyAcc_mean_Z          =mean(tBodyAcc_mean_Z          )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tGravityAcc_mean_X        =mean(tGravityAcc_mean_X        )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tGravityAcc_mean_Y        =mean(tGravityAcc_mean_Y        )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tGravityAcc_mean_Z       =mean(tGravityAcc_mean_Z       )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyAccJerk_mean_X      =mean(tBodyAccJerk_mean_X      )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyAccJerk_mean_Y       =mean(tBodyAccJerk_mean_Y       )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyAccJerk_mean_Z      =mean(tBodyAccJerk_mean_Z      )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyGyro_mean_X          =mean(tBodyGyro_mean_X          )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyGyro_mean_Y          =mean(tBodyGyro_mean_Y          )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyGyro_mean_Z         =mean(tBodyGyro_mean_Z         )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyGyroJerk_mean_X      =mean(tBodyGyroJerk_mean_X      )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyGyroJerk_mean_Y      =mean(tBodyGyroJerk_mean_Y      )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyGyroJerk_mean_Z     =mean(tBodyGyroJerk_mean_Z     )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyAccMag_mean          =mean(tBodyAccMag_mean          )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tGravityAccMag_mean       =mean(tGravityAccMag_mean       )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyAccJerkMag_mean     =mean(tBodyAccJerkMag_mean     )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyGyroMag_mean         =mean(tBodyGyroMag_mean         )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyGyroJerkMag_mean     =mean(tBodyGyroJerkMag_mean     )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyAcc_mean_X          =mean(fBodyAcc_mean_X          )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyAcc_mean_Y           =mean(fBodyAcc_mean_Y           )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyAcc_mean_Z           =mean(fBodyAcc_mean_Z           )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyAccJerk_mean_X      =mean(fBodyAccJerk_mean_X      )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyAccJerk_mean_Y       =mean(fBodyAccJerk_mean_Y       )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyAccJerk_mean_Z       =mean(fBodyAccJerk_mean_Z       )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyGyro_mean_X         =mean(fBodyGyro_mean_X         )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyGyro_mean_Y          =mean(fBodyGyro_mean_Y          )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyGyro_mean_Z          =mean(fBodyGyro_mean_Z          )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyAccMag_mean         =mean(fBodyAccMag_mean         )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyBodyAccJerkMag_mean  =mean(fBodyBodyAccJerkMag_mean  )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyBodyGyroMag_mean     =mean(fBodyBodyGyroMag_mean     )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyBodyGyroJerkMag_mean=mean(fBodyBodyGyroJerkMag_mean)))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyAcc_std_X            =mean(tBodyAcc_std_X            )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyAcc_std_Y            =mean(tBodyAcc_std_Y            )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyAcc_std_Z           =mean(tBodyAcc_std_Z           )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tGravityAcc_std_X         =mean(tGravityAcc_std_X         )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tGravityAcc_std_Y         =mean(tGravityAcc_std_Y         )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tGravityAcc_std_Z        =mean(tGravityAcc_std_Z        )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyAccJerk_std_X        =mean(tBodyAccJerk_std_X        )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyAccJerk_std_Y        =mean(tBodyAccJerk_std_Y        )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyAccJerk_std_Z       =mean(tBodyAccJerk_std_Z       )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyGyro_std_X           =mean(tBodyGyro_std_X           )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyGyro_std_Y           =mean(tBodyGyro_std_Y           )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyGyro_std_Z          =mean(tBodyGyro_std_Z          )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyGyroJerk_std_X       =mean(tBodyGyroJerk_std_X       )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyGyroJerk_std_Y       =mean(tBodyGyroJerk_std_Y       )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyGyroJerk_std_Z      =mean(tBodyGyroJerk_std_Z      )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyAccMag_std           =mean(tBodyAccMag_std           )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tGravityAccMag_std        =mean(tGravityAccMag_std        )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyAccJerkMag_std      =mean(tBodyAccJerkMag_std      )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyGyroMag_std          =mean(tBodyGyroMag_std          )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_tBodyGyroJerkMag_std      =mean(tBodyGyroJerkMag_std      )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyAcc_std_X           =mean(fBodyAcc_std_X           )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyAcc_std_Y            =mean(fBodyAcc_std_Y            )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyAcc_std_Z            =mean(fBodyAcc_std_Z            )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyAccJerk_std_X       =mean(fBodyAccJerk_std_X       )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyAccJerk_std_Y        =mean(fBodyAccJerk_std_Y        )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyAccJerk_std_Z        =mean(fBodyAccJerk_std_Z        )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyGyro_std_X          =mean(fBodyGyro_std_X          )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyGyro_std_Y           =mean(fBodyGyro_std_Y           )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyGyro_std_Z           =mean(fBodyGyro_std_Z           )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyAccMag_std          =mean(fBodyAccMag_std          )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyBodyAccJerkMag_std   =mean(fBodyBodyAccJerkMag_std   )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyBodyGyroMag_std      =mean(fBodyBodyGyroMag_std      )))
results<-merge(results,ddply(X2, "activitysubject", summarise,  mean_fBodyBodyGyroJerkMag_std =mean(fBodyBodyGyroJerkMag_std )))

View(results)
write.table(results, file="results.txt", row.names=FALSE)

