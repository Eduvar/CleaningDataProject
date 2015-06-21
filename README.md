# CleaningDataProject



Open run_analisys.R in RStudio
My code downloads the samsung data to your working directory. It will perform the following steps:

Unzip samsung data file
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
Creates a new second, independent tidy data set with the average of each variable for each activity and each subject.

Prerequisites:

run_analysis.R needs the following packages installed: dplyr, gdata, plyr, reshape2

# #dplyr to use
# install.packages("dplyr")
# library(dplyr)
# 
# #gdata to use matchcols
# install.packages("gdata")
# library(gdata)
# 
# #plyr to use ddply
# install.packages("plyr")
# library(plyr)
# 
# #reshape2 to use melt
# install.packages("reshape2")
# library(reshape2)



codebook

The results.txt file generated in your working directory by running run_analisys.R contains the following data:
activity_subject: key that contains the activity performed description and subject key that performed the activity.
mean_tBodyAcc_mean_X           : mean of tBodyAcc_mean_X           accros subject and activity
mean_tBodyAcc_mean_Y           : mean of tBodyAcc_mean_Y           accros subject and activity
mean_tBodyAcc_mean_Z          : mean of tBodyAcc_mean_Z          accros subject and activity
mean_tGravityAcc_mean_X        : mean of tGravityAcc_mean_X        accros subject and activity
mean_tGravityAcc_mean_Y        : mean of tGravityAcc_mean_Y        accros subject and activity
mean_tGravityAcc_mean_Z       : mean of tGravityAcc_mean_Z       accros subject and activity
mean_tBodyAccJerk_mean_X      : mean of tBodyAccJerk_mean_X      accros subject and activity
mean_tBodyAccJerk_mean_Y       : mean of tBodyAccJerk_mean_Y       accros subject and activity
mean_tBodyAccJerk_mean_Z      : mean of tBodyAccJerk_mean_Z      accros subject and activity
mean_tBodyGyro_mean_X          : mean of tBodyGyro_mean_X          accros subject and activity
mean_tBodyGyro_mean_Y          : mean of tBodyGyro_mean_Y          accros subject and activity
mean_tBodyGyro_mean_Z         : mean of tBodyGyro_mean_Z         accros subject and activity
mean_tBodyGyroJerk_mean_X      : mean of tBodyGyroJerk_mean_X      accros subject and activity
mean_tBodyGyroJerk_mean_Y      : mean of tBodyGyroJerk_mean_Y      accros subject and activity
mean_tBodyGyroJerk_mean_Z     : mean of tBodyGyroJerk_mean_Z     accros subject and activity
mean_tBodyAccMag_mean          : mean of tBodyAccMag_mean          accros subject and activity
mean_tGravityAccMag_mean       : mean of tGravityAccMag_mean       accros subject and activity
mean_tBodyAccJerkMag_mean     : mean of tBodyAccJerkMag_mean     accros subject and activity
mean_tBodyGyroMag_mean         : mean of tBodyGyroMag_mean         accros subject and activity
mean_tBodyGyroJerkMag_mean     : mean of tBodyGyroJerkMag_mean     accros subject and activity
mean_fBodyAcc_mean_X          : mean of fBodyAcc_mean_X          accros subject and activity
mean_fBodyAcc_mean_Y           : mean of fBodyAcc_mean_Y           accros subject and activity
mean_fBodyAcc_mean_Z           : mean of fBodyAcc_mean_Z           accros subject and activity
mean_fBodyAccJerk_mean_X      : mean of fBodyAccJerk_mean_X      accros subject and activity
mean_fBodyAccJerk_mean_Y       : mean of fBodyAccJerk_mean_Y       accros subject and activity
mean_fBodyAccJerk_mean_Z       : mean of fBodyAccJerk_mean_Z       accros subject and activity
mean_fBodyGyro_mean_X         : mean of fBodyGyro_mean_X         accros subject and activity
mean_fBodyGyro_mean_Y          : mean of fBodyGyro_mean_Y          accros subject and activity
mean_fBodyGyro_mean_Z          : mean of fBodyGyro_mean_Z          accros subject and activity
mean_fBodyAccMag_mean         : mean of fBodyAccMag_mean         accros subject and activity
mean_fBodyBodyAccJerkMag_mean  : mean of fBodyBodyAccJerkMag_mean  accros subject and activity
mean_fBodyBodyGyroMag_mean     : mean of fBodyBodyGyroMag_mean     accros subject and activity
mean_fBodyBodyGyroJerkMag_mean: mean of fBodyBodyGyroJerkMag_meanaccros subject and activity
mean_tBodyAcc_std_X            : mean of tBodyAcc_std_X            accros subject and activity
mean_tBodyAcc_std_Y            : mean of tBodyAcc_std_Y            accros subject and activity
mean_tBodyAcc_std_Z           : mean of tBodyAcc_std_Z           accros subject and activity
mean_tGravityAcc_std_X         : mean of tGravityAcc_std_X         accros subject and activity
mean_tGravityAcc_std_Y         : mean of tGravityAcc_std_Y         accros subject and activity
mean_tGravityAcc_std_Z        : mean of tGravityAcc_std_Z        accros subject and activity
mean_tBodyAccJerk_std_X        : mean of tBodyAccJerk_std_X        accros subject and activity
mean_tBodyAccJerk_std_Y        : mean of tBodyAccJerk_std_Y        accros subject and activity
mean_tBodyAccJerk_std_Z       : mean of tBodyAccJerk_std_Z       accros subject and activity
mean_tBodyGyro_std_X           : mean of tBodyGyro_std_X           accros subject and activity
mean_tBodyGyro_std_Y           : mean of tBodyGyro_std_Y           accros subject and activity
mean_tBodyGyro_std_Z          : mean of tBodyGyro_std_Z          accros subject and activity
mean_tBodyGyroJerk_std_X       : mean of tBodyGyroJerk_std_X       accros subject and activity
mean_tBodyGyroJerk_std_Y       : mean of tBodyGyroJerk_std_Y       accros subject and activity
mean_tBodyGyroJerk_std_Z      : mean of tBodyGyroJerk_std_Z      accros subject and activity
mean_tBodyAccMag_std           : mean of tBodyAccMag_std           accros subject and activity
mean_tGravityAccMag_std        : mean of tGravityAccMag_std        accros subject and activity
mean_tBodyAccJerkMag_std      : mean of tBodyAccJerkMag_std      accros subject and activity
mean_tBodyGyroMag_std          : mean of tBodyGyroMag_std          accros subject and activity
mean_tBodyGyroJerkMag_std      : mean of tBodyGyroJerkMag_std      accros subject and activity
mean_fBodyAcc_std_X           : mean of fBodyAcc_std_X           accros subject and activity
mean_fBodyAcc_std_Y            : mean of fBodyAcc_std_Y            accros subject and activity
mean_fBodyAcc_std_Z            : mean of fBodyAcc_std_Z            accros subject and activity
mean_fBodyAccJerk_std_X       : mean of fBodyAccJerk_std_X       accros subject and activity
mean_fBodyAccJerk_std_Y        : mean of fBodyAccJerk_std_Y        accros subject and activity
mean_fBodyAccJerk_std_Z        : mean of fBodyAccJerk_std_Z        accros subject and activity
mean_fBodyGyro_std_X          : mean of fBodyGyro_std_X          accros subject and activity
mean_fBodyGyro_std_Y           : mean of fBodyGyro_std_Y           accros subject and activity
mean_fBodyGyro_std_Z           : mean of fBodyGyro_std_Z           accros subject and activity
mean_fBodyAccMag_std          : mean of fBodyAccMag_std          accros subject and activity
mean_fBodyBodyAccJerkMag_std   : mean of fBodyBodyAccJerkMag_std   accros subject and activity
mean_fBodyBodyGyroMag_std      : mean of fBodyBodyGyroMag_std      accros subject and activity
mean_fBodyBodyGyroJerkMag_std : mean of fBodyBodyGyroJerkMag_std accros subject and activity
mean_activitysubject : mean of activitysubject accros subject and activity
