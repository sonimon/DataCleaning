# DataCleaning
Data Science Specialization: Getting and Cleaning Data Course Project
The following activities are included in the project
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Assumptions and dependencies
# Obtain the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
#Unzip the file and copy the necessary files (mentioned below) to data folder under the current working directory 
#use getwd() and setwd()  to verify and set the working directory
#The following  files should be available
#    data/features.txt
#    data/activity_labels.txt
#    data/train/subject_train.txt
#    data/train/subject_train.txt
#    data/train/y_train.txt
#    data/train/X_train.txt
#    data/test/subject_test.txt
#    data/test/y_test.txt
#    data/test/X_test.txt

once the input data files are verified, run the run_analysis.R script which will perform the 5 steps mentioned above. 
The tidy data set created is named as SummaryData.txt
