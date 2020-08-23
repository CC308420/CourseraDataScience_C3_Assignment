# Getting and Cleaning Data Course Project
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. This project is aimed to summarize data collected from the accelerometers from the Samsung Galaxy S smartphone. The raw data is from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

### This project folder contains
  - R script (run_analysis.R)
  - Cookbook ([CodeBook.md](https://github.com/CC308420/CourseraDataScience_C3_Assignment/blob/master/CodeBook.md))
  - Tidy Data (tidy_dataset.txt)

### Instruction:
1. Download raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Decompress the ziped raw data file using file archiver software (7-Zip)
3. Run R script (run_analysis.R)
    1. Load libraries (reshape2)
    2. Read data (train data, test data, features label data, activity label data)
    3. Merges the training and the test sets
    4. Extracts only the measurements on the mean and standard deviation
    5. Uses descriptive activity names to name the activities in the data set
    6. Labels the data set with descriptive variable names
    7. Group the data by activity and subject
    8. Get the average of each variable for each activity and each subject
    9. Save tidy data set to tidy_dataset.txt
