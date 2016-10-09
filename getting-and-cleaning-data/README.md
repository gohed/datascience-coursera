## Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!

### Project Documents
* codebook.md - describes all the variables and summaries calculated, along with units, and any other relevant information.
* README.md - explanation for the analysis files
* run_analysis.R - script to generate tidy data
* tidyData1.txt - data set at step 4 (included for completeness)
* tidyData2.txt - final data set at step 5

### Steps
1. Unzip data of the for the project into the UCI HAR Dataset folder
2. Load the train and test data sets into R. Rbind the 2 data sets
3. Load the features, subject and activity labels into R
4. Use grep on the features data to filter out columns which contains mean and standard deveviations on x
5. Apply the activity names on y using factor
6. Apply column names to x, y and subjects using names
7. Create first data set by column binding subject, y and x
8. Export the first data set to tidyData1.txt
9. Create second data set by apply aggregate on the first data set
10. Export the second data set to tidyData2.txt



 






