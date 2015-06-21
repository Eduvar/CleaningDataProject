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

codebook

The results.txt file generated in your working directory by running run_analisys.R contains the following data:

Column name                 Description

activity_subject        
  key that contains the activity performed description and subject key that performed the activity. Values:            WALKING_X, WALKING_UPSTAIRS_X, WALKING_DOWNSTAIRS_X, SITTING_X, STANDING_X, LAYING_X. X represents the subject key.

mean_tBodyAcc_mean_X        
  mean of tBodyAcc_mean_X acros subject and activity. This is a numeric value.

mean_tBodyAcc_mean_Y        
  mean of tBodyAcc_mean_Y accros subject and activity. This is a numeric value.

mean_tBodyAcc_mean_Z        
  mean of tBodyAcc_mean_Z accros subject and activity. This is a numeric value.

mean_tGravityAcc_mean_X     
  mean of tGravityAcc_mean_X accros subject and activity. This is a numeric value.

mean_tGravityAcc_mean_Y     
  mean of tGravityAcc_mean_Y accros subject and activity. This is a numeric value.

mean_tGravityAcc_mean_Z     
  mean of tGravityAcc_mean_Z accros subject and activity. This is a numeric value.

mean_tBodyAccJerk_mean_X    
  mean of tBodyAccJerk_mean_X accros subject and activity. This is a numeric value.

mean_tBodyAccJerk_mean_Y    
  mean of tBodyAccJerk_mean_Y accros subject and activity. This is a numeric value.

mean_tBodyAccJerk_mean_Z      
  mean of tBodyAccJerk_mean_Z accros subject and activity. This is a numeric value.

mean_tBodyGyro_mean_X          
  mean of tBodyGyro_mean_X accros sub ject and activity. This is a numeric value.


mean_tBodyGyro_mean_Y
  mean of tBodyGyro_mean_Y across subject and activity. This is a numeric value.

mean_tBodyGyro_mean_Z       
  mean of tBodyGyro_mean_Z across subject and activity. This is a numeric value.

mean_tBodyGyroJerk_mean_X      
  mean of tBodyGyroJerk_mean_X across subject and activity. This is a numeric value.

mean_tBodyGyroJerk_mean_Y      
  mean of tBodyGyroJerk_mean_Y across subject and activity. This is a numeric value.

mean_tBodyGyroJerk_mean_Z     
  mean of tBodyGyroJerk_mean_Z across subject and activity. This is a numeric value.

mean_tBodyAccMag_mean          
  mean of tBodyAccMag_mean across subject and activity. This is a numeric value.

mean_tGravityAccMag_mean       
  mean of tGravityAccMag_mean across subject and activity. This is a numeric value.

mean_tBodyAccJerkMag_mean     
  mean of tBodyAccJerkMag_mean across subject and activity. This is a numeric value.

mean_tBodyGyroMag_mean         
  mean of tBodyGyroMag_mean across subject and activity. This is a numeric value.

mean_tBodyGyroJerkMag_mean     
  mean of tBodyGyroJerkMag_mean across subject and activity. This is a numeric value.

mean_fBodyAcc_mean_X          
  mean of fBodyAcc_mean_X across subject and activity. This is a numeric value.

mean_fBodyAcc_mean_Y           
  mean of fBodyAcc_mean_Y across subject and activity. This is a numeric value.

mean_fBodyAcc_mean_Z           
  mean of fBodyAcc_mean_Z across subject and activity. This is a numeric value.

mean_fBodyAccJerk_mean_X        
  mean of fBodyAccJerk_mean_X across subject and activity. This is a numeric value.

mean_fBodyAccJerk_mean_Y       
  mean of fBodyAccJerk_mean_Y across subject and activity. This is a numeric value.

mean_fBodyAccJerk_mean_Z       
  mean of fBodyAccJerk_mean_Z across subject and activity. This is a numeric value.

mean_fBodyGyro_mean_X         
  mean of fBodyGyro_mean_X across subject and activity. This is a numeric value.

mean_fBodyGyro_mean_Y          
  mean of fBodyGyro_mean_Y across subject and activity. This is a numeric value.

mean_fBodyGyro_mean_Z          
  mean of fBodyGyro_mean_Z across subject and activity. This is a numeric value.

mean_fBodyAccMag_mean         
  mean of fBodyAccMag_mean across subject and activity. This is a numeric value.

mean_fBodyBodyAccJerkMag_mean  
  mean of fBodyBodyAccJerkMag_mean across subject and activity This is a numeric value.

mean_fBodyBodyGyroMag_mean     
  mean of fBodyBodyGyroMag_mean across subject and activity. This is a numeric value.

mean_fBodyBodyGyroJerkMag_mean
  mean of fBodyBodyGyroJerkMag_mean across subject and activity. This is a numeric value.

mean_tBodyAcc_std_X            
  mean of tBodyAcc_std_X across subject and activity. This is a numeric value.

mean_tBodyAcc_std_Y            
  mean of tBodyAcc_std_Y across subject and activity. This is a numeric value.

mean_tBodyAcc_std_Z           
  mean of tBodyAcc_std_Z across subject and activity. This is a numeric value.

mean_tGravityAcc_std_X         
  mean of tGravityAcc_std_X across subject and activity. This is a numeric value.

mean_tGravityAcc_std_Y         
  mean of tGravityAcc_std_Y across subject and activity. This is a numeric value.

mean_tGravityAcc_std_Z        
  mean of tGravityAcc_std_Z across subject and activity. This is a numeric value.

mean_tBodyAccJerk_std_X        
  mean of tBodyAccJerk_std_X across subject and activity. This is a numeric value.

mean_tBodyAccJerk_std_Y        
  mean of tBodyAccJerk_std_Y across subject and activity. This is a numeric value.

mean_tBodyAccJerk_std_Z       
  mean of tBodyAccJerk_std_Z across subject and activity. This is a numeric value.

mean_tBodyGyro_std_X           
  mean of tBodyGyro_std_X across subject and activity. This is a numeric value.

mean_tBodyGyro_std_Y           
  mean of tBodyGyro_std_Y across subject and activity. This is a numeric value.

mean_tBodyGyro_std_Z          
  mean of tBodyGyro_std_Z across subject and activity. This is a numeric value.

mean_tBodyGyroJerk_std_X       
  mean of tBodyGyroJerk_std_X across subject and activity. This is a numeric value.

mean_tBodyGyroJerk_std_Y       
  mean of tBodyGyroJerk_std_Y across subject and activity. This is a numeric value.

mean_tBodyGyroJerk_std_Z      
  mean of tBodyGyroJerk_std_Z across subject and activity. This is a numeric value.

mean_tBodyAccMag_std           
  mean of tBodyAccMag_std  across subject and activity. This is a numeric value.

mean_tGravityAccMag_std        
  mean of tGravityAccMag_std across subject and activity. This is a numeric value.

mean_tBodyAccJerkMag_std      
  mean of tBodyAccJerkMag_std across subject and activity. This is a numeric value.

mean_tBodyGyroMag_std          
  mean of tBodyGyroMag_std across subject and activity. This is a numeric value.

mean_tBodyGyroJerkMag_std      
  mean of tBodyGyroJerkMag_std across subject and activity. This is a numeric value.

mean_fBodyAcc_std_X           
  mean of fBodyAcc_std_X across subject and activity. This is a numeric value.

mean_fBodyAcc_std_Y            
  mean of fBodyAcc_std_Y across subject and activity. This is a numeric value.

mean_fBodyAcc_std_Z            
  mean of fBodyAcc_std_Z across subject and activity. This is a numeric value.

mean_fBodyAccJerk_std_X       
  mean of fBodyAccJerk_std_X across subject and activity. This is a numeric value.

mean_fBodyAccJerk_std_Y        
  mean of fBodyAccJerk_std_Y across subject and activity. This is a numeric value.

mean_fBodyAccJerk_std_Z        
  mean of fBodyAccJerk_std_Z across subject and activity. This is a numeric value.

mean_fBodyGyro_std_X          
  mean of fBodyGyro_std_X across subject and activity. This is a numeric value.

mean_fBodyGyro_std_Y           
  mean of fBodyGyro_std_Y across subject and activity. This is a numeric value.

mean_fBodyGyro_std_Z           
  mean of fBodyGyro_std_Z across subject and activity. This is a numeric value.

mean_fBodyAccMag_std          
  mean of fBodyAccMag_std across subject and activity. This is a numeric value.

mean_fBodyBodyAccJerkMag_std   
  mean of fBodyBodyAccJerkMag_std across subject and activity. This is a numeric value.

mean_fBodyBodyGyroMag_std      
  mean of fBodyBodyGyroMag_std across subject and activity. This is a numeric value.

mean_fBodyBodyGyroJerkMag_std 
  mean of fBodyBodyGyroJerkMag_std across subject and activity. This is a numeric value.
