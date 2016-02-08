## All data files were put into a single folder, and the working
## directory was set to that folder. 

run_analysis <- function() {
## Step 1: Read each file in as a data table, and add column names.
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

## Step 2: Based on structure of each data table, merge test data together,   
## then merge train data together, then merge both together into one data set. 
test_data <- cbind(subject_test, y_test, X_test)
train_data <- cbind(subject_train, y_train, X_train)
complete_data <- rbind(test_data, train_data)

## Step 3: Select columns with values for mean and standard deviation. 
library(dplyr)
subset_data <- complete_data[,grepl("mean|std|subject|activity", colnames(complete_data))]

##Step 4: Change activity code to activity name
subset_data$activity[subset_data$activity == '1'] <- 'walking'
subset_data$activity[subset_data$activity == '2'] <- 'walking_upstairs'
subset_data$activity[subset_data$activity == '3'] <- 'walking_downstairs'
subset_data$activity[subset_data$activity == '4'] <- 'sitting'
subset_data$activity[subset_data$activity == '5'] <- 'standing'
subset_data$activity[subset_data$activity == '6'] <- 'laying'

##Step 5: Create new Tidy Data with average information for each activity
## and subject. Then export file as csv to working directory. 

tidy_data <- group_by(subset_data, subject, activity)
tidy_data <- summarize_each(tidy_data, funs(mean))
write.table(tidy_data, "tidy_data.txt", row.names = FALSE)

##Success!! 
}
