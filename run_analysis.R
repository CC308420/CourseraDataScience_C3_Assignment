## Load libraries
library(reshape2)

## Read train and test data
xTrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subjectTrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
xTest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subjectTest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

## Read features label data
features <- read.table("./data/UCI HAR Dataset/features.txt")

## Read activity label data
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

## Merges the training and the test sets
xMerge <- rbind(xTrain, xTest)
yMerge <- rbind(yTrain, yTest)
subjectMerge <- rbind(subjectTrain, subjectTest)

## Extracts only the measurements on the mean and standard deviation
featuresCol <- grep("[Mm]ean|[Ss]td", features[, 2])
featuresLabel <- features[featuresCol, 2]

## Uses descriptive activity names to name the activities in the data set
featuresLabel <- gsub("mean", "Mean", featuresLabel)
featuresLabel <- gsub("std", "Std", featuresLabel)
featuresLabel <- gsub("[-(),]", "", featuresLabel)
featuresLabel <- gsub("gravity", "Gravity", featuresLabel)

## Labels the data set with descriptive variable names
xData <- xMerge[featuresCol]
data <- cbind(subjectMerge, yMerge, xData)
colnames(data) <- c("subject", "activity", featuresLabel)

## Group the activity and subject
data$subject <- factor(data$subject)
data$activity <- factor(data$activity, levels=activityLabels[,1],
                        labels=activityLabels[,2])

## Get the average of each variable for each activity and each subject
dataMelt <- melt(data, id=c("subject", "activity"))
dataTidy <- dcast(dataMelt, subject + activity ~ variable, mean)

## Save tidy data set
write.table(dataTidy, "./data/tidy_dataset.txt")