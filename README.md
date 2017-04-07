# Course3ProgrammingAssignment
Repository for Course 3 Getting and Cleaning Data Programming Assignment

**Requirements / guidelines for programming assignment:**  
You should create one R script called run_analysis.R that does the following. 
1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names. 
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable
for each activity and each subject.

Load packages
````r
library(plyr)
library(dplyr)
library(data.table)
library(dtplyr)
````

**Background information for data**   
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:  

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

Here are the data for the project:  

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  


**Download zip file to local directory / folder**  
````r
Define directory to place zip file:  
===================================
maindir <- "/Users/harridw/Development/Coursera/Course3/PeerGraded/Course3ProgrammingAssignment"  
zipdir <- "zipfiles"  

Steps to download file:  
=======================
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"  
if(!file.exists(zipdir)) {dir.create(file.path(maindir, zipdir))}  
dest_zip <- paste(file.path(maindir, zipdir),"dataset.zip", sep = "/", collapse = NULL)  
download.file(fileURL, destfile = dest_zip)  
````

**Unzip files into separate directory / folder**  
````r
NOTE: Use maindir defined above -- 'maindir'  
unzipdir <- "unzipfiles"  
if(!file.exists(unzipdir)) {dir.create(file.path(maindir, unzipdir))}  
dest_unzip <- file.path(maindir, unzipdir)  
unzip(dest_zip, files = NULL, list = FALSE, overwrite = TRUE, junkpaths = FALSE,  
      exdir = dest_unzip, unzip = "internal", setTimes = FALSE)  
````

A number of text files were generated, and saved to 'unzip' folder defined above.  Three groups or categories of files were produced: a general, test, and train.  The 'general' text files provide documentation about the data which applies to both 'test' and 'train' data.  The specific files are listed below.  A CodeBook.md file is available to provide an understanding of the data collected and included in the zip file.  

The text files are as follows:  
General  
1. activity_labels.txt  
2. features_info.txt  
3. features.txt  
4. README.txt  

test  
1. subject_test.txt 
2. X_test.txt  
3. y_test.txt  
```
Intertial Signals  
1. body_acc_x_test.txt  
2. body_acc_y_test.txt  
3. body_acc_z_test.txt  
4. body_gyro_x_test.txt  
5. body_gyro_y_test.txt
6. body_gyro_z_test.txt  
7. total_acc_x_test.txt  
8. total_acc_y_test.txt  
9. total_acc_z_test.txt  









