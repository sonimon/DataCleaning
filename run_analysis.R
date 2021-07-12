#JHU Data Science Specialization.
#Course : Getting and Cleaning Data
#Week4 course project

#Assumptions and dependencies
#Obtain the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
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

#######
#Step 0 : Load the data files into appropriate data frames/tables
#######

#0.1  Read the metadata i.e. Faeture names and Activity Labels
featureNames <- read.table("data/features.txt", header = FALSE)
activityLabels <- read.table("data/activity_labels.txt", header = FALSE)

#0.2 Read data from the training data set
trainSubjectIDs <- read.table("data/train/subject_train.txt", header = FALSE)
trainActivityIDs <- read.table("data/train/y_train.txt", header = FALSE)
trainActivityData <- read.table("data/train/X_train.txt", header = FALSE)

# read the test data
testSubjectIDs <- read.table("data/test/subject_test.txt", header = FALSE)
testActivityIDs <- read.table("data/test/y_test.txt", header = FALSE)
testActivityData <- read.table("data/test/X_test.txt", header = FALSE)

#######
#Step 1.  Merge the training and the test sets to create one data set.
#######

subjectIDs <- rbind(trainSubjectIDs, testSubjectIDs)
activityIDs <- rbind(trainActivityIDs, testActivityIDs)
activityData <- rbind(trainActivityData, testActivityData)

#######
#Step 2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
#######

#2.1  Assign the column names for activityData dataframe using the metadata obtained from features.txt 
#Use the transposed list from the second column of featureNames dataframe for feature labels
colnames(activityData) <- t(featureNames[2])
#Use hardcoded values for subjectIDs and activityIDs dataframe col labels
colnames(subjectIDs) <- "SubjectID"
colnames(activityIDs) <- "ActivityType"

#Get the list of columns with measurements on the mean and standard deviation
stdMeanColNames <- grep(".*mean\\(\\).*|.*std\\(\\).*", names(activityData))

#Selct only those columns with MEan and Std deviation
activityData <- activityData[,stdMeanColNames]

#combine the three dataframes into a consolidated datframe (reuse activityData). The first two columns are Subject-ID and Activity-ID
activityData <- cbind(subjectIDs,activityIDs,activityData)

#At this  point, the data frame activityData should have 10299 obeservations(rows) with 68 variables(columns)
#This can be verified using dim(activityData)


#######
#Step 3.  Use descriptive activity names to name the activities in the data set
#######

#3.1 Convert the Activity-Type column data type to character to avoid error while setting new values
activityData$ActivityType <- as.character(activityData$ActivityType)
#3.2 Set the descriptive names to the activity types
for (i in 1:6){
     activityData$ActivityType[activityData$ActivityType == i] <- as.character(activityLabels[i,2])
}

#3.3 Conver to to factor variabler to keep it neat and tidy
activityData$ActivityType <- as.factor(activityData$ActivityType)


#######
#Step 4.  Appropriately labels the data set with descriptive variable names
#######
#Use grep -substitution to repace short codes with descriptive names
names(activityData)<-gsub("-mean()", "Mean", names(activityData))
names(activityData)<-gsub("-std()", "StandardDeviation", names(activityData))
#'t'  at the beginning indicates time -  replace accordingly
names(activityData)<-gsub("^t", "Time", names(activityData))
#'f'  at the beginning indicates Frequency -  replace accordingly
names(activityData)<-gsub("^f", "Frequency", names(activityData))
names(activityData)<-gsub("Acc", "Accelerometer", names(activityData))
names(activityData)<-gsub("Gyro", "Gyroscope", names(activityData))
names(activityData)<-gsub("Mag", "Magnitude", names(activityData))
names(activityData)<-gsub("-freq()", "Frequency", names(activityData), ignore.case = TRUE)
names(activityData)<-gsub("angle", "Angle", names(activityData))
names(activityData)<-gsub("gravity", "Gravity", names(activityData))
#There are a few column names where the text BodyBody appears -  changes this to 'Body'
names(activityData)<-gsub("BodyBody", "Body", names(activityData))

#######
#Step 4.  From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.
#######
#4.1 Sinc we have to use average on subjectID, it has to be a factor variable
activityData$SubjectID <- as.factor(activityData$SubjectID)

# new data set with the average of each variable for each activity and each subject
summaryData <- aggregate(. ~SubjectID + ActivityType, activityData, mean)

# save the new data set to file  
write.table(summaryData, file = "data/SummaryData.txt", row.name=FALSE)

