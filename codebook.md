# Getting and Cleaning Data Class Project

Files: run_analysis.R script, tidy_data.csv output file
     
Format: A data frame with 180 observations on 81 variables. Variables are described below script explanation. 

The "run_analysis.R" script provided performs the following operations, in order to create a tidy data set, as described in the Getting and Cleaning Data Coursera class. The final data set shows averages of the means and standard deviations for 79 different measurements provided in the data, for each of 30 participants for each of 6 different activities.

> The script assumes all 6 relevent data files are in a common folder, and the working directory has already been set to that folder. 

1. Reads in each of the 6 txt files into data tables, and adds column names. 
2. Merges "test" data together. 
3. Merges "train" data together. 
4. Merges test and train data together. 
5. Subsets or selects columns with means and standard deviations. 
6. Changes "activity" column to show actual activity name based on numerical designation. 
7. Groups data by subject, then activity. 
8. Summarizes the table, and applies the mean function to provide the means of each of the 79 measurements, for the 30 subjects, and 6 different activities. 
9. Writes an output csv file called "tidy_data.csv" to the working directory. 

The data for this project was obtained here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

A full description of the experiments and data is available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

# Variable Descriptions

* 'subject’ a numeric vector – Numerical reference to participant in study. There were a total of 30 subjects who participated in the study. 

* ‘activity’ a factor with levels ‘laying’ ‘sitting’ ‘standing’
          ‘walking’ ‘walking_downstairs’ ‘walking_upstairs’


> Each of the following variables refers to the mean or standard deviation of a set of measurements taken of triaxial acceleration from the accelerometer, and triaxial angular velocity from the gyroscope. 

The values for each of these variables are the average for each subject and activity.  

The units for the accelerometer (“Acc”) measurements are in standard gravity units ‘g’.

The units for the gyroscope (“Gyro”) measurements are in radians/second. 

All measurements are normalized and bounded within [-1, 1].  

* ‘tBodyAcc.mean...X’ a numeric vector
* ‘tBodyAcc.mean...Y’ a numeric vector
* ‘tBodyAcc.mean...Z’ a numeric vector
* ‘tBodyAcc.std...X’ a numeric vector
* ‘tBodyAcc.std...Y’ a numeric vector
* ‘tBodyAcc.std...Z’ a numeric vector
* ‘tGravityAcc.mean...X’ a numeric vector
* ‘tGravityAcc.mean...Y’ a numeric vector
* ‘tGravityAcc.mean...Z’ a numeric vector
* ‘tGravityAcc.std...X’ a numeric vector
* ‘tGravityAcc.std...Y’ a numeric vector
* ‘tGravityAcc.std...Z’ a numeric vector
* ‘tBodyAccJerk.mean...X’ a numeric vector
* ‘tBodyAccJerk.mean...Y’ a numeric vector
* ‘tBodyAccJerk.mean...Z’ a numeric vector
* ‘tBodyAccJerk.std...X’ a numeric vector
* ‘tBodyAccJerk.std...Y’ a numeric vector
* ‘tBodyAccJerk.std...Z’ a numeric vector
* ‘tBodyGyro.mean...X’ a numeric vector
* ‘tBodyGyro.mean...Y’ a numeric vector
* ‘tBodyGyro.mean...Z’ a numeric vector
* 'tBodyGyro.std...X’ a numeric vector
* ‘tBodyGyro.std...Y’ a numeric vector
* ‘tBodyGyro.std...Z’ a numeric vector
* ‘tBodyGyroJerk.mean...X’ a numeric vector
* ‘tBodyGyroJerk.mean...Y’ a numeric vector
* ‘tBodyGyroJerk.mean...Z’ a numeric vector
* ‘tBodyGyroJerk.std...X’ a numeric vector
* ‘tBodyGyroJerk.std...Y’ a numeric vector
* ‘tBodyGyroJerk.std...Z’ a numeric vector
* ‘tBodyAccMag.mean..’ a numeric vector
* ‘tBodyAccMag.std..’ a numeric vector
* ‘tGravityAccMag.mean..’ a numeric vector
* ‘tGravityAccMag.std..’ a numeric vector
* ‘tBodyAccJerkMag.mean..’ a numeric vector
* ‘tBodyAccJerkMag.std..’ a numeric vector
* ‘tBodyGyroMag.mean..’ a numeric vector
* ‘tBodyGyroMag.std..’ a numeric vector
* ‘tBodyGyroJerkMag.mean..’ a numeric vector
* ‘tBodyGyroJerkMag.std..’ a numeric vector
* ‘fBodyAcc.mean...X’ a numeric vector
* ‘fBodyAcc.mean...Y’ a numeric vector
* ‘fBodyAcc.mean...Z’ a numeric vector
* ‘fBodyAcc.std...X’ a numeric vector
* ‘fBodyAcc.std...Y’ a numeric vector
* ‘fBodyAcc.std...Z’ a numeric vector
* ‘fBodyAcc.meanFreq...X’ a numeric vector
* ‘fBodyAcc.meanFreq...Y’ a numeric vector
* ‘fBodyAcc.meanFreq...Z’ a numeric vector
* ‘fBodyAccJerk.mean...X’ a numeric vector
* ‘fBodyAccJerk.mean...Y’ a numeric vector
* ‘fBodyAccJerk.mean...Z’ a numeric vector
* ‘fBodyAccJerk.std...X’ a numeric vector
* ‘fBodyAccJerk.std...Y’ a numeric vector
* ‘fBodyAccJerk.std...Z’ a numeric vector
* ‘fBodyAccJerk.meanFreq...X’ a numeric vector
* ‘fBodyAccJerk.meanFreq...Y’ a numeric vector
* ‘fBodyAccJerk.meanFreq...Z’ a numeric vector
* ‘fBodyGyro.mean...X’ a numeric vector
* ‘fBodyGyro.mean...Y’ a numeric vector
* ‘fBodyGyro.mean...Z’ a numeric vector
* ‘fBodyGyro.std...X’ a numeric vector
* ‘fBodyGyro.std...Y’ a numeric vector
* ‘fBodyGyro.std...Z’ a numeric vector
* ‘fBodyGyro.meanFreq...X’ a numeric vector
* ‘fBodyGyro.meanFreq...Y’ a numeric vector
* ‘fBodyGyro.meanFreq...Z’ a numeric vector
* ‘fBodyAccMag.mean..’ a numeric vector
* ‘fBodyAccMag.std..’ a numeric vector
* ‘fBodyAccMag.meanFreq..’ a numeric vector
* ‘fBodyBodyAccJerkMag.mean..’ a numeric vector
* ‘fBodyBodyAccJerkMag.std..’ a numeric vector
* ‘fBodyBodyAccJerkMag.meanFreq..’ a numeric vector
* ‘fBodyBodyGyroMag.mean..’ a numeric vector
* ‘fBodyBodyGyroMag.std..’ a numeric vector
* ‘fBodyBodyGyroMag.meanFreq..’ a numeric vector
* ‘fBodyBodyGyroJerkMag.mean..’ a numeric vector
* ‘fBodyBodyGyroJerkMag.std..’ a numeric vector
* ‘fBodyBodyGyroJerkMag.meanFreq..’ a numeric vector
