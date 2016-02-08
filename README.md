# READ ME:
# Getting and Cleaning Data Class Project
Shayne Easterwood

This purpose of this project is to get and clean data obtained from Smartlabs, for experiments done using activity/movement measurements taken from a smartphone. The final data set shows averages of the means and standard deviations for 79 different measurements provided in the data, for each of 30 participants for each of 6 different activities.

The data for this project was obtained here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description of the experiments and data is available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The directory includes the following files:
* run_analysis.R script as described above
* README.md file
* codebook.md file
* tidy data output txt file as described above. 

# run_analysis.R script

run_analysis <- function() {

subject_test <- read.table("subject_test.txt")
colnames(subject_test) <- "subject"

subject_train <- read.table("subject_train.txt")
colnames(subject_train) <- "subject"

X_test <- read.table("X_test.txt")
features <- read.table("features.txt")
colnames(X_test) <- features[, 2]

X_train <- read.table("X_train.txt")
colnames(X_train) <- features[, 2]

y_test <- read.table("y_test.txt")
colnames(y_test) <- "activity"

y_train <- read.table("y_train.txt")
colnames(y_train) <- "activity"

test_data <- cbind(subject_test, y_test, X_test)
train_data <- cbind(subject_train, y_train, X_train)
complete_data <- rbind(test_data, train_data)

library(dplyr)
subset_data <- complete_data[,grepl("mean|std|subject|activity", colnames(complete_data))]

subset_data$activity[subset_data$activity == '1'] <- 'walking'
subset_data$activity[subset_data$activity == '2'] <- 'walking_upstairs'
subset_data$activity[subset_data$activity == '3'] <- 'walking_downstairs'
subset_data$activity[subset_data$activity == '4'] <- 'sitting'
subset_data$activity[subset_data$activity == '5'] <- 'standing'
subset_data$activity[subset_data$activity == '6'] <- 'laying'

tidy_data <- group_by(subset_data, subject, activity)
tidy_data <- summarize_each(tidy_data, funs(mean))
write.table(tidy_data, "tidy_data.txt", row.names = FALSE)
}
