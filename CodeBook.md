

Codebook for the project of the course: Getting and Cleaning Data.


DATA DESCRIPTION

The data uploaded for evaluation is the tidy dataset requested  in step 5 of the project description.

The tidy dataset is composed of 180 observations and 68 variables.  Each row reports the mean of each measured variable for each combination of "subject" and "activity".



PROCESSING STEPS
-----------------------------------------------------------
1---- Processing steps taken for the first unified dataset

1.1- Open and load the 6 sub-datasets  with the subject indices, activity labels and data, both test  and train (subject_test, y_test, X_test, subject_train, y_train, X_train)
1.2- Open and load also the variable names file (features.txt)
1.3- Bind data row-wise and label the variables according to the variable names file.
1.4- Subset the data to extract the mean and std variables.
1.5- Bind also the subjects and activities and label them.
1.6- Join the three sub-datasets  column-wise to form the first tidy dataset.

-----------------------------------------------------------
2---- Processing steps for the second tidy dataset

2.1- Using the reshape2 library apply the melt function to the previous dataset using as "id" the subjects and activities and all the rest variables as " measure variables".
2.2- Using the dcast function into the previous molten dataset, apply the mean to the combination of subject + activity_labels instances.
2.3- Verify that the dataset was created as expected.


-----------------------------------------------------------



VARIABLES

[1] "subject"       - Index of the subject perfiorming the activity [30 subjects]            
[2] "activity_labels"   - Activity being performed  ("walking", "walking_up", "walking_down","sitting","standing", "laying"))

The following are the variables measured, (mean and std), as described in the original data documentation. The second tidy dataset depicts their mean across subject and activity.
 [3] "tBodyAcc-mean()-X"          
 [4] "tBodyAcc-mean()-Y"          
 [5] "tBodyAcc-mean()-Z"          
 [6] "tBodyAcc-std()-X"           
 [7] "tBodyAcc-std()-Y"           
 [8] "tBodyAcc-std()-Z"           
 [9] "tGravityAcc-mean()-X"       
[10] "tGravityAcc-mean()-Y"       
[11] "tGravityAcc-mean()-Z"       
[12] "tGravityAcc-std()-X"        
[13] "tGravityAcc-std()-Y"        
[14] "tGravityAcc-std()-Z"        
[15] "tBodyAccJerk-mean()-X"      
[16] "tBodyAccJerk-mean()-Y"      
[17] "tBodyAccJerk-mean()-Z"      
[18] "tBodyAccJerk-std()-X"       
[19] "tBodyAccJerk-std()-Y"       
[20] "tBodyAccJerk-std()-Z"       
[21] "tBodyGyro-mean()-X"         
[22] "tBodyGyro-mean()-Y"         
[23] "tBodyGyro-mean()-Z"         
[24] "tBodyGyro-std()-X"          
[25] "tBodyGyro-std()-Y"          
[26] "tBodyGyro-std()-Z"          
[27] "tBodyGyroJerk-mean()-X"     
[28] "tBodyGyroJerk-mean()-Y"     
[29] "tBodyGyroJerk-mean()-Z"     
[30] "tBodyGyroJerk-std()-X"      
[31] "tBodyGyroJerk-std()-Y"      
[32] "tBodyGyroJerk-std()-Z"      
[33] "tBodyAccMag-mean()"         
[34] "tBodyAccMag-std()"          
[35] "tGravityAccMag-mean()"      
[36] "tGravityAccMag-std()"       
[37] "tBodyAccJerkMag-mean()"     
[38] "tBodyAccJerkMag-std()"      
[39] "tBodyGyroMag-mean()"        
[40] "tBodyGyroMag-std()"         
[41] "tBodyGyroJerkMag-std()"     
[42] "tBodyGyroJerkMag-mad()"     
[43] "fBodyAcc-mean()-X"          
[44] "fBodyAcc-mean()-Y"          
[45] "fBodyAcc-mean()-Z"          
[46] "fBodyAcc-std()-X"           
[47] "fBodyAcc-std()-Y"           
[48] "fBodyAcc-std()-Z"           
[49] "fBodyAccJerk-mean()-X"      
[50] "fBodyAccJerk-mean()-Y"      
[51] "fBodyAccJerk-mean()-Z"      
[52] "fBodyAccJerk-std()-X"       
[53] "fBodyAccJerk-std()-Y"       
[54] "fBodyAccJerk-std()-Z"       
[55] "fBodyGyro-mean()-X"         
[56] "fBodyGyro-mean()-Y"         
[57] "fBodyGyro-mean()-Z"         
[58] "fBodyGyro-std()-X"          
[59] "fBodyGyro-std()-Y"          
[60] "fBodyGyro-std()-Z"          
[61] "fBodyAccMag-mean()"         
[62] "fBodyAccMag-std()"          
[63] "fBodyBodyAccJerkMag-mean()" 
[64] "fBodyBodyAccJerkMag-std()"  
[65] "fBodyBodyGyroMag-mean()"    
[66] "fBodyBodyGyroMag-std()"     
[67] "fBodyBodyGyroJerkMag-mean()"
[68] "fBodyBodyGyroJerkMag-std()" 



