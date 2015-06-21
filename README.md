# CleaningDataProject


Open run_analisys.R in RStudio. 
My code assumes the samsung data (Dataset.zip) is saved in to your working directory. It will perform the following steps:

Prerequisites:

run_analysis.R needs the following packages installed: dplyr, plyr. Assumes Dataset.zip file is downloaded into your working directory.

1. Load prerequisite packages dplyr, plyr
2. Unzip Dataset.zip
3. Read activity labels (activity_labels.txt), features (features.txt), test data (subject_test.txt, X_test.txt, y_test.txt), train data (subject_train.txt, X_train.txt, y_train.txt)
4. Rename subject_test column from X2 to X1. 
5. Merge test and training data.
6. Rename resulting column names with feature values.
7. Extract only mean and std columns
8. Merge y test and train data to activity labels.
9. Rename y columns to activitykey and activitydescription and bind to X data.
10. Rename subject column from V1 to subjectkey and bind to X data.
11. Rename X columns to more descriptive names.
12. Create new independent data frame named X2. 
13. Combine activitydescription and subjectkey columns in X2 to a single activitysubject column.
14. Remove activitydescription and subjectkey from X2.
15. Create results data frame as a result of merging all the individual means across subject and activity
16. View results data frame and export to a file named results.txt in your working directory.

Codebook

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
