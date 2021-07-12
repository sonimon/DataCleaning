JHU Data Science Specialization.
Course : Getting and Cleaning Data
Week4 course project

Code book 

Original Source Data is obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

License:
========
Use of the original data set mentioned above in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.




Descriptions of columns in the data set
========================================
Descriptions of data elements are available from teh following files
activity_labels.txt
features.txt
features_info.txt



Transformations done useing the run_analysis.R script
=====================================================
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement.
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names.
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Data elements in the tidy data set (SumamryData).  Each row contains the average of each variable for each activity and each subject
====================================================================================================================================

> colnames(summaryData)
 [1] "SubjectID"                                                                 
 [2] "ActivityType"                                                              
 [3] "TimeBodyAccelerometerelerometerMean()-X"                                   
 [4] "TimeBodyAccelerometerelerometerMean()-Y"                                   
 [5] "TimeBodyAccelerometerelerometerMean()-Z"                                   
 [6] "TimeBodyAccelerometerelerometerStandardDeviation()-X"                      
 [7] "TimeBodyAccelerometerelerometerStandardDeviation()-Y"                      
 [8] "TimeBodyAccelerometerelerometerStandardDeviation()-Z"                      
 [9] "TimeGravityAccelerometerelerometerMean()-X"                                
[10] "TimeGravityAccelerometerelerometerMean()-Y"                                
[11] "TimeGravityAccelerometerelerometerMean()-Z"                                
[12] "TimeGravityAccelerometerelerometerStandardDeviation()-X"                   
[13] "TimeGravityAccelerometerelerometerStandardDeviation()-Y"                   
[14] "TimeGravityAccelerometerelerometerStandardDeviation()-Z"                   
[15] "TimeBodyAccelerometerelerometerJerkMean()-X"                               
[16] "TimeBodyAccelerometerelerometerJerkMean()-Y"                               
[17] "TimeBodyAccelerometerelerometerJerkMean()-Z"                               
[18] "TimeBodyAccelerometerelerometerJerkStandardDeviation()-X"                  
[19] "TimeBodyAccelerometerelerometerJerkStandardDeviation()-Y"                  
[20] "TimeBodyAccelerometerelerometerJerkStandardDeviation()-Z"                  
[21] "TimeBodyGyroscopescopeMean()-X"                                            
[22] "TimeBodyGyroscopescopeMean()-Y"                                            
[23] "TimeBodyGyroscopescopeMean()-Z"                                            
[24] "TimeBodyGyroscopescopeStandardDeviation()-X"                               
[25] "TimeBodyGyroscopescopeStandardDeviation()-Y"                               
[26] "TimeBodyGyroscopescopeStandardDeviation()-Z"                               
[27] "TimeBodyGyroscopescopeJerkMean()-X"                                        
[28] "TimeBodyGyroscopescopeJerkMean()-Y"                                        
[29] "TimeBodyGyroscopescopeJerkMean()-Z"                                        
[30] "TimeBodyGyroscopescopeJerkStandardDeviation()-X"                           
[31] "TimeBodyGyroscopescopeJerkStandardDeviation()-Y"                           
[32] "TimeBodyGyroscopescopeJerkStandardDeviation()-Z"                           
[33] "TimeBodyAccelerometerelerometerMagnitudenitudeMean()"                      
[34] "TimeBodyAccelerometerelerometerMagnitudenitudeStandardDeviation()"         
[35] "TimeGravityAccelerometerelerometerMagnitudenitudeMean()"                   
[36] "TimeGravityAccelerometerelerometerMagnitudenitudeStandardDeviation()"      
[37] "TimeBodyAccelerometerelerometerJerkMagnitudenitudeMean()"                  
[38] "TimeBodyAccelerometerelerometerJerkMagnitudenitudeStandardDeviation()"     
[39] "TimeBodyGyroscopescopeMagnitudenitudeMean()"                               
[40] "TimeBodyGyroscopescopeMagnitudenitudeStandardDeviation()"                  
[41] "TimeBodyGyroscopescopeJerkMagnitudenitudeMean()"                           
[42] "TimeBodyGyroscopescopeJerkMagnitudenitudeStandardDeviation()"              
[43] "FrequencyBodyAccelerometerelerometerMean()-X"                              
[44] "FrequencyBodyAccelerometerelerometerMean()-Y"                              
[45] "FrequencyBodyAccelerometerelerometerMean()-Z"                              
[46] "FrequencyBodyAccelerometerelerometerStandardDeviation()-X"                 
[47] "FrequencyBodyAccelerometerelerometerStandardDeviation()-Y"                 
[48] "FrequencyBodyAccelerometerelerometerStandardDeviation()-Z"                 
[49] "FrequencyBodyAccelerometerelerometerJerkMean()-X"                          
[50] "FrequencyBodyAccelerometerelerometerJerkMean()-Y"                          
[51] "FrequencyBodyAccelerometerelerometerJerkMean()-Z"                          
[52] "FrequencyBodyAccelerometerelerometerJerkStandardDeviation()-X"             
[53] "FrequencyBodyAccelerometerelerometerJerkStandardDeviation()-Y"             
[54] "FrequencyBodyAccelerometerelerometerJerkStandardDeviation()-Z"             
[55] "FrequencyBodyGyroscopescopeMean()-X"                                       
[56] "FrequencyBodyGyroscopescopeMean()-Y"                                       
[57] "FrequencyBodyGyroscopescopeMean()-Z"                                       
[58] "FrequencyBodyGyroscopescopeStandardDeviation()-X"                          
[59] "FrequencyBodyGyroscopescopeStandardDeviation()-Y"                          
[60] "FrequencyBodyGyroscopescopeStandardDeviation()-Z"                          
[61] "FrequencyBodyAccelerometerelerometerMagnitudenitudeMean()"                 
[62] "FrequencyBodyAccelerometerelerometerMagnitudenitudeStandardDeviation()"    
[63] "FrequencyBodyAccelerometerelerometerJerkMagnitudenitudeMean()"             
[64] "FrequencyBodyAccelerometerelerometerJerkMagnitudenitudeStandardDeviation()"
[65] "FrequencyBodyGyroscopescopeMagnitudenitudeMean()"                          
[66] "FrequencyBodyGyroscopescopeMagnitudenitudeStandardDeviation()"             
[67] "FrequencyBodyGyroscopescopeJerkMagnitudenitudeMean()"                      
[68] "FrequencyBodyGyroscopescopeJerkMagnitudenitudeStandardDeviation()"  


