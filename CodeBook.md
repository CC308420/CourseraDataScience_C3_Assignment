# Project Cookbook
## Tidy Data Summary
This is a summary tidy data set of Human Activity Recognition Using Smartphones Data Set. It takes the average of each variable for each activity and each subject.
### Viariables
  -  subject (Unit: Numeric): 
     An identifier of the subject who carried out the experiment.
     From 1 - 30.
  -  activity (Unit: String): 
     Activity labels.
       - WALKING
       - WALKING_UPSTAIRS
       - WALKING_DOWNSTAIRS
       - SITTING
       - STANDING
       - LAYING
  -  tBodyAccMeanX (Unit: Numeric)
  -  tBodyAccMeanY (Unit: Numeric)
  -  tBodyAccMeanZ (Unit: Numeric)
  -  tBodyAccStdX (Unit: Numeric)
  -  tBodyAccStdY (Unit: Numeric)
  -  tBodyAccStdZ (Unit: Numeric)
  -  tGravityAccMeanX (Unit: Numeric)
  -  tGravityAccMeanY (Unit: Numeric)
  -  tGravityAccMeanZ (Unit: Numeric)
  -  tGravityAccStdX (Unit: Numeric)
  -  tGravityAccStdY (Unit: Numeric)
  -  tGravityAccStdZ (Unit: Numeric)
  -  tBodyAccJerkMeanX (Unit: Numeric)
  -  tBodyAccJerkMeanY (Unit: Numeric)
  -  tBodyAccJerkMeanZ (Unit: Numeric)
  -  tBodyAccJerkStdX (Unit: Numeric)
  -  tBodyAccJerkStdY (Unit: Numeric)
  -  tBodyAccJerkStdZ (Unit: Numeric)
  -  tBodyGyroMeanX (Unit: Numeric)
  -  tBodyGyroMeanY (Unit: Numeric)
  -  tBodyGyroMeanZ (Unit: Numeric)
  -  tBodyGyroStdX (Unit: Numeric)
  -  tBodyGyroStdY (Unit: Numeric)
  -  tBodyGyroStdZ (Unit: Numeric)
  -  tBodyGyroJerkMeanX (Unit: Numeric)
  -  tBodyGyroJerkMeanY (Unit: Numeric)
  -  tBodyGyroJerkMeanZ (Unit: Numeric)
  -  tBodyGyroJerkStdX (Unit: Numeric)
  -  tBodyGyroJerkStdY (Unit: Numeric)
  -  tBodyGyroJerkStdZ (Unit: Numeric)
  -  tBodyAccMagMean (Unit: Numeric)
  -  tBodyAccMagStd (Unit: Numeric)
  -  tGravityAccMagMean (Unit: Numeric)
  -  tGravityAccMagStd (Unit: Numeric)
  -  tBodyAccJerkMagMean (Unit: Numeric)
  -  tBodyAccJerkMagStd (Unit: Numeric)
  -  tBodyGyroMagMean (Unit: Numeric)
  -  tBodyGyroMagStd (Unit: Numeric)
  -  tBodyGyroJerkMagMean (Unit: Numeric)
  -  tBodyGyroJerkMagStd (Unit: Numeric)
  -  fBodyAccMeanX (Unit: Numeric)
  -  fBodyAccMeanY (Unit: Numeric)
  -  fBodyAccMeanZ (Unit: Numeric)
  -  fBodyAccStdX (Unit: Numeric)
  -  fBodyAccStdY (Unit: Numeric)
  -  fBodyAccStdZ (Unit: Numeric)
  -  fBodyAccMeanFreqX (Unit: Numeric)
  -  fBodyAccMeanFreqY (Unit: Numeric)
  -  fBodyAccMeanFreqZ (Unit: Numeric)
  -  fBodyAccJerkMeanX (Unit: Numeric)
  -  fBodyAccJerkMeanY (Unit: Numeric)
  -  fBodyAccJerkMeanZ (Unit: Numeric)
  -  fBodyAccJerkStdX (Unit: Numeric)
  -  fBodyAccJerkStdY (Unit: Numeric)
  -  fBodyAccJerkStdZ (Unit: Numeric)
  -  fBodyAccJerkMeanFreqX (Unit: Numeric)
  -  fBodyAccJerkMeanFreqY (Unit: Numeric)
  -  fBodyAccJerkMeanFreqZ (Unit: Numeric)
  -  fBodyGyroMeanX (Unit: Numeric)
  -  fBodyGyroMeanY (Unit: Numeric)
  -  fBodyGyroMeanZ (Unit: Numeric)
  -  fBodyGyroStdX (Unit: Numeric)
  -  fBodyGyroStdY (Unit: Numeric)
  -  fBodyGyroStdZ (Unit: Numeric)
  -  fBodyGyroMeanFreqX (Unit: Numeric)
  -  fBodyGyroMeanFreqY (Unit: Numeric)
  -  fBodyGyroMeanFreqZ (Unit: Numeric)
  -  fBodyAccMagMean (Unit: Numeric)
  -  fBodyAccMagStd (Unit: Numeric)
  -  fBodyAccMagMeanFreq (Unit: Numeric)
  -  fBodyBodyAccJerkMagMean (Unit: Numeric)
  -  fBodyBodyAccJerkMagStd (Unit: Numeric)
  -  fBodyBodyAccJerkMagMeanFreq (Unit: Numeric)
  -  fBodyBodyGyroMagMean (Unit: Numeric)
  -  fBodyBodyGyroMagStd (Unit: Numeric)
  -  fBodyBodyGyroMagMeanFreq (Unit: Numeric)
  -  fBodyBodyGyroJerkMagMean (Unit: Numeric)
  -  fBodyBodyGyroJerkMagStd (Unit: Numeric)
  -  fBodyBodyGyroJerkMagMeanFreq (Unit: Numeric)
  -  angletBodyAccMeanGravity (Unit: Numeric)
  -  angletBodyAccJerkMeanGravityMean (Unit: Numeric)
  -  angletBodyGyroMeanGravityMean (Unit: Numeric)
  -  angletBodyGyroJerkMeanGravityMean (Unit: Numeric)
  -  angleXGravityMean (Unit: Numeric)
  -  angleYGravityMean (Unit: Numeric)
  -  angleZGravityMean (Unit: Numeric)

## Experimental Study Design
This design is for generating a tidy data set with the average of each variable for each activity and each subject from [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Here is the step to generate the tidy data set from raw data set.
  - Load libraries (reshape2)
  - Read train and test data
  - Read features label data
  - Read activity label data
  - Merges the training and the test sets
  - Extracts only the measurements on the mean and standard deviation
  - Uses descriptive activity names to name the activities in the data set
  - Labels the data set with descriptive variable names
  - Group the data by activity and subject
  - Get the average of each variable for each activity and each subject
  - Save tidy data set
