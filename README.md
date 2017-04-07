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
* General  
1. activity_labels.txt  
2. features_info.txt  
3. features.txt  
4. README.txt  

* test  
1. subject_test.txt 
2. X_test.txt  
3. y_test.txt  
```
Inertial Signals (test subfolder)
1. body_acc_x_test.txt  
2. body_acc_y_test.txt  
3. body_acc_z_test.txt  
4. body_gyro_x_test.txt  
5. body_gyro_y_test.txt
6. body_gyro_z_test.txt  
7. total_acc_x_test.txt  
8. total_acc_y_test.txt  
9. total_acc_z_test.txt  
```

* train  
1. subject_train.txt  
2. X_train.txt  
3. y_train.txt  
```
Inertial Signals (train subfolder)  
1. body_acc_x_train.txt  
2. body_acc_y_train.txt  
3. body_acc_z_train.txt  
4. body_gyro_x_train.txt  
5. body_gyro_y_train.txt
6. body_gyro_z_train.txt  
7. total_acc_x_train.txt  
8. total_acc_y_train.txt  
9. total_acc_z_train.txt  
```

Below steps load the text (txt) files into R. The process / steps are similar for each group, or category, of  
files: General, test, train.  
````r
**General 'txt' files**  
unzipdir <- "UCI HAR Dataset"
unzip_main <- file.path(dest_unzip, unzipdir)

Read text files into R from the 'root' test directory / folder [NOTE: multiple files to be read]
unzip_filelist1 <- list.files(path = unzip_main, pattern = ".*.txt", all.files = FALSE, full.names = FALSE, recursive = FALSE,
                             ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

Remove text (txt) extension so that file name can be used as name in R
file_unzip1 <- gsub(".txt", "", unzip_filelist1)

Read all listed files into R 
for(i in file_unzip1)  {
      filepath <- file.path(unzip_main, paste(i,".txt",sep=""))
      assign(i, data.table(read.table(filepath, fill = TRUE, header = FALSE)))
}
***

**test 'txt' files, including Inertial Signals**  
#  The initial step is to more clearly define / document the 'path' to location of files
testdir <- "UCI HAR Dataset/test"
test_inertial_signals <- "Inertial Signals"
test_main <- file.path(dest_unzip, testdir)
test_inertial <- file.path(test_main, test_inertial_signals)

#  Read text files into R from the 'root' test directory / folder [NOTE: multiple files to be read]
test_filelist1 <- list.files(path = test_main, pattern = ".*.txt", all.files = FALSE, full.names = FALSE, recursive = FALSE,
                            ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

#  Remove text (txt) extension so that file name can be used as name in R
file_names1 <- gsub(".txt", "", test_filelist1)

for(i in file_names1)  {
      filepath <- file.path(test_main,paste(i,".txt",sep=""))
      assign(i, data.table(read.table(filepath, header = FALSE)))
}
---

#  Read text files into R from the 'Inertial Signals' folder of 'test' directory / folder [NOTE: multiple files to be read]
test_filelist2 <- list.files(path = test_inertial, pattern = ".*.txt", all.files = FALSE, full.names = FALSE, recursive = FALSE,
                            ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

#  Remove text (txt) extension so that file name can be used as name in R
file_names2 <- gsub(".txt", "", test_filelist2)

for(i in file_names2)  {
      filepath <- file.path(test_inertial,paste(i,".txt",sep=""))
      assign(i, data.table(read.table(filepath, header = FALSE)))
}
***






