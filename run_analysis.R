##This file does the following:
##1. Merges the training and the test sets to create one data set.
##2. Extracts only the measurements on the mean and standard deviation for each measurement. 
##3. Uses descriptive activity names to name the activities in the data set
##4. Appropriately labels the data set with descriptive variable names. 
##5. From the data set in step 4, creates a second, independent tidy data set 
##  with the average of each variable for each activity and each subject.

##Requirements
require(dplyr)
require(reshape2)

##Step 1: Merge the Data
##Names of each feature and activity recorded
featureNames = read.table("features.txt")
activityNames = read.table("activity_labels.txt")

##'train/X_train.txt': Training set.
trainingSet = read.table("train/X_train.txt")
colnames(trainingSet) <- featureNames[,2]

##'train/y_train.txt': Training labels.
trainingLabels = read.table("train/y_train.txt")
colnames(trainingLabels) <- "activity"

##'train/subject_train.txt': Training subjects
trainingSubjects = read.table("train/subject_train.txt")
colnames(trainingSubjects) <- "subject_id"

##Create full training set dataframe
trainingData = data.frame(trainingSubjects, trainingLabels, trainingSet)

##'test/X_test.txt': Test set.
testSet = read.table("test/X_test.txt")
colnames(testSet) <- featureNames[,2]

##'test/y_test.txt': Test labels.
testLabels = read.table("test/y_test.txt")
colnames(testLabels) <- "activity"

##'test/subject_test.txt': Test subjects
testSubjects = read.table("test/subject_test.txt")
colnames(testSubjects) <- "subject_id"

##Create full training set dataframe
testData = data.frame(testSubjects, testLabels, testSet)

##Merge the training and test data to get the full training set
##Columns are first the subject, then the activity, then the data
allData = rbind(testData, trainingData)

## -----Step 1 Complete -----

##Step 2 and 3: Extracts measurements on mean and std dev. for each measurement. 
##Uses descriptive activity names to name the activities in the data set
##Get the means
subsetMeans = select(allData, contains("mean"))
##Get the std devs
subsetSTDs = select(allData, contains("std"))
##Combine into one dataset
variableData = cbind(subsetMeans, subsetSTDs)
##Add in the subject name and activity (recoded)
  ##Recode activity to actual meaning
  ##1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS
  ##4 SITTING, 5 STANDING, 6 LAYING
  allData$activity[allData$activity==1] <- "Walking"
  allData$activity[allData$activity==2] <- "Walking_Upstairs"
  allData$activity[allData$activity==3] <- "Walking_Downstairs"
  allData$activity[allData$activity==4] <- "Sitting"
  allData$activity[allData$activity==5] <- "Standing"
  allData$activity[allData$activity==6] <- "Laying"
  ##Get subjectIds and Activities
  subjectIDs = select(allData, contains("subject_id"))
  activities = select(allData, contains("activity"))
  ##Combine all data
  subsetData = cbind(subjectIDs, activities, variableData)

## -----Steps 2 and 3 Complete -----

##Step 4: Label dataset with descriptive variable names--done throughout
## -----Step 4 Complete -----

##Step 5: From the data set in step 4, creates a second, independent tidy data set 
##  with the average of each variable for each activity and each subject.
ids = c("subject_id", "activity")
finalData = melt(subsetData, id.vars=ids)
finalData <-dcast(finalData, subject_id + activity ~ variable, mean)

##Write the tidy data file
write.table(finalData, file="tidy_data.txt", row.names=FALSE)
## -----Step 5 Complete -----
