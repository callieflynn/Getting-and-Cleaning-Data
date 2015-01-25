#Code Book (for tidied data only)

##Identification
The first two columns identify the test subject's id and activity:
•	subject_id[integer]: test subject's unique person id
•	activity[char]: type of movement
    •	Walking
    •	Walking Upstairs
    •	Walking Downstairs
    •	Sitting
    •	Standing
    •	Laying

##Measurement Values
All remaining variables provide the mean and standard deviation for each subject and activity. 
For each unique pairing of subject and activity, the measurement means are given first, followed 
by the corresponding standard deviations. All values are floating point numbers.
###Means of each measurement:
    •	tBodyAcc.mean...X
    •	tBodyAcc.mean...Y
    •	tBodyAcc.mean...Z
    •	tGravityAcc.mean...X
    •	tGravityAcc.mean...Y
    •	tGravityAcc.mean...Z
    •	tBodyAccJerk.mean...X
    •	tBodyAccJerk.mean...Y
    •	tBodyAccJerk.mean...Z
    •	tBodyGyro.mean...X
    •	tBodyGyro.mean...Y
    •	tBodyGyro.mean...Z
    •	tBodyGyroJerk.mean...X
    •	tBodyGyroJerk.mean...Y
    •	tBodyGyroJerk.mean...Z
    •	tBodyAccMag.mean..
    •	tGravityAccMag.mean..
    •	tBodyAccJerkMag.mean..
    •	tBodyGyroMag.mean..
    •	tBodyGyroJerkMag.mean..
    •	fBodyAcc.mean...X
    •	fBodyAcc.mean...Y
    •	fBodyAcc.mean...Z
    •	fBodyAcc.meanFreq...X
    •	fBodyAcc.meanFreq...Y
    •	fBodyAcc.meanFreq...Z
    •	fBodyAccJerk.mean...X
    •	fBodyAccJerk.mean...Y
    •	fBodyAccJerk.mean...Z
    •	fBodyAccJerk.meanFreq...X
    •	fBodyAccJerk.meanFreq...Y
    •	fBodyAccJerk.meanFreq...Z
    •	fBodyGyro.mean...X
    •	fBodyGyro.mean...Y
    •	fBodyGyro.mean...Z
    •	fBodyGyro.meanFreq...X
    •	fBodyGyro.meanFreq...Y
    •	fBodyGyro.meanFreq...Z
    •	fBodyAccMag.mean..
    •	fBodyAccMag.meanFreq..
    •	fBodyBodyAccJerkMag.mean..
    •	fBodyBodyAccJerkMag.meanFreq..
    •	fBodyBodyGyroMag.mean..
    •	fBodyBodyGyroMag.meanFreq..
    •	fBodyBodyGyroJerkMag.mean..
    •	fBodyBodyGyroJerkMag.meanFreq..
    •	angle.tBodyAccMean.gravity.
    •	angle.tBodyAccJerkMean..gravityMean.
    •	angle.tBodyGyroMean.gravityMean.
    •	angle.tBodyGyroJerkMean.gravityMean.
    •	angle.X.gravityMean.
    •	angle.Y.gravityMean.
    •	angle.Z.gravityMean.
    
###Standard Deviation of each measurement:
    •	tBodyAcc.std...X
    •	tBodyAcc.std...Y
    •	tBodyAcc.std...Z
    •	tGravityAcc.std...X
    •	tGravityAcc.std...Y
    •	tGravityAcc.std...Z
    •	tBodyAccJerk.std...X
    •	tBodyAccJerk.std...Y
    •	tBodyAccJerk.std...Z
    •	tBodyGyro.std...X
    •	tBodyGyro.std...Y
    •	tBodyGyro.std...Z
    •	tBodyGyroJerk.std...X
    •	tBodyGyroJerk.std...Y
    •	tBodyGyroJerk.std...Z
    •	tBodyAccMag.std..
    •	tGravityAccMag.std..
    •	tBodyAccJerkMag.std..
    •	tBodyGyroMag.std..
    •	tBodyGyroJerkMag.std..
    •	fBodyAcc.std...X
    •	fBodyAcc.std...Y
    •	fBodyAcc.std...Z
    •	fBodyAccJerk.std...X
    •	fBodyAccJerk.std...Y
    •	fBodyAccJerk.std...Z
    •	fBodyGyro.std...X
    •	fBodyGyro.std...Y
    •	fBodyGyro.std...Z
    •	fBodyAccMag.std..
    •	fBodyBodyAccJerkMag.std..
    •	fBodyBodyGyroMag.std..
    •	fBodyBodyGyroJerkMag.std..
