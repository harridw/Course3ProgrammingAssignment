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

**Load packages**  
This represents a list of the packages anticipated to be used during the assignment
````r
library(plyr)
library(dplyr)
library(data.table)
library(dtplyr)
library(Hmisc)
library(tidyr)
library(reshape2)
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
files: General, test, train.  This code development occurred prior to realizing that 'Inertial Signals files  
are not required to complete assignment.
````
General 'txt' files  
unzipdir <- "UCI HAR Dataset"
unzip_main <- file.path(dest_unzip, unzipdir)

Read text files into R from the 'root' test directory / folder [NOTE: multiple files]
unzip_filelist1 <- list.files(path = unzip_main, pattern = ".*.txt", all.files = FALSE, full.names = FALSE,
                              recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

#  Remove text (txt) extension so that file name can be used as name in R
file_unzip1 <- gsub(".txt", "", unzip_filelist1)

#  Read all listed files into R 
for(i in file_unzip1)  {
      filepath <- file.path(unzip_main, paste(i,".txt",sep=""))
      assign(i, data.table(read.table(filepath, fill = TRUE, header = FALSE)))
}


test 'txt' files, including Inertial Signals  
#  The initial step is to more clearly define / document the 'path' to location of files
testdir <- "UCI HAR Dataset/test"
test_inertial_signals <- "Inertial Signals"
test_main <- file.path(dest_unzip, testdir)
test_inertial <- file.path(test_main, test_inertial_signals)

#  Read text files into R from the 'root' test directory / folder [NOTE: multiple files]
test_filelist1 <- list.files(path = test_main, pattern = ".*.txt", all.files = FALSE, full.names = FALSE,
                             recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

#  Remove text (txt) extension so that file name can be used as name in R
file_names1 <- gsub(".txt", "", test_filelist1)

for(i in file_names1)  {
      filepath <- file.path(test_main,paste(i,".txt",sep=""))
      assign(i, data.table(read.table(filepath, header = FALSE)))
}

#  Read text files into R from the 'Inertial Signals' folder of 'test' directory / folder [NOTE: multiple files]
test_filelist2 <- list.files(path = test_inertial, pattern = ".*.txt", all.files = FALSE, full.names = FALSE,
                             recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

#  Remove text (txt) extension so that file name can be used as name in R
file_names2 <- gsub(".txt", "", test_filelist2)

for(i in file_names2)  {
      filepath <- file.path(test_inertial,paste(i,".txt",sep=""))
      assign(i, data.table(read.table(filepath, header = FALSE)))
}

train 'txt' files, including Inertial Signals  
#  The initial step is to more clearly define / document the 'path' to location of files
traindir <- "UCI HAR Dataset/train"
train_inertial_signals <- "Inertial Signals"
train_main <- file.path(dest_unzip, traindir)
train_inertial <- file.path(train_main, train_inertial_signals)

#  Read text files into R from the 'root' train directory / folder [NOTE: multiple files]
train_filelist1 <- list.files(path = train_main, pattern = ".*.txt", all.files = FALSE, full.names = FALSE,
                              recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

#  Remove text (txt) extension so that file name can be used as name in R
file_train1 <- gsub(".txt", "", train_filelist1)

for(i in file_train1)  {
      filepath <- file.path(train_main,paste(i,".txt",sep=""))
      assign(i, data.table(read.table(filepath, header = FALSE)))
}


#  Read text files into R from the 'Inertial Signals' folder of 'train' directory / folder [NOTE: multiple files]
train_filelist2 <- list.files(path = train_inertial, pattern = ".*.txt", all.files = FALSE, full.names = FALSE,
                              recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

#  Remove text (txt) extension so that file name can be used as name in R
file_train2 <- gsub(".txt", "", train_filelist2)

for(i in file_train2)  {
      filepath <- file.path(train_inertial,paste(i,".txt",sep=""))
      assign(i, data.table(read.table(filepath, header = FALSE)))
}
````

#### **Cleaning the Data**  
To combine, or merge, datasets with more descriptive information about an observation to the variables, a first step  
is preparing the data within each file / dataset.  Below are steps pursued:

Remaming columns in a couple tables in lieu of default names (e.g. V1, V2...) when read into R
````r
setnames(activity_labels, c("V1", "V2"), c("activityid", "activity"))
setnames(subject_test, c("V1"), c("subjectid"))
setnames(subject_train, c("V1"), c("subjectid"))
setnames(y_test, c("V1"), c("activityid"))
setnames(y_train, c("V1"), c("activityid"))
````

Creating indexes for files to improve merging of datasets.  Of particular interest is to maintain the order
observations are stored in  the dataset --> consistency with variable datasets (X_test, X_train)
````r
y_test$rowindx <- as.factor(seq(along = y_test$activityid))
y_train$rowindx <- as.factor(seq(along = y_train$activityid))
subject_test$rowindx <- as.factor(seq(along = subject_test$subjectid))
subject_train$rowindx <- as.factor(seq(along = subject_train$subjectid))
````

#### **Merge Datasets - part 1**  
The first datasets to be merged relate to descriptive information about an observation (e.g. subject id, activity).  
These datasets will be merged, or combined [using cbind()], with the variable datasets to provide more complete dataset.

Step 1:  Merge 'activity' datasets
The 'activity_labels' dataset represents a table of the description for each of 6 (index: 1 - 6) defined activities.  
For each observation, the datasets 'y_test' and 'y_train' identify the activity.  A 'rowindx' was added (see prior step)  
to both datasets, 'y_test' and 'y_train'

NOTE:  'activityid' is name assigned to id of activity in datasets: activtiy_labels, y_test, y_train
````r
_Add activity label / description to each observation in y_test and y_train_  
test_activity <- merge(y_test, activity_labels, by = "activityid")
train_activity <- merge(y_train, activity_labels, by = "activityid")  

_head(test_activity, n = 5)_  
activityid rowindx activity
    1        80    WALKING
    1        81    WALKING
    1        82    WALKING
    1        83    WALKING
    1        84    WALKING
````

Step 2:  Merge 'subject' and 'activity' datasets
This step produces a more complete picture, or description, of each observation, before including variables.  The 'rowindx'
previously noted is used in this step to merge files and maintain the order of each observation listed in the dataset.  To  
remove unnecessary data, 'activityid', a select() is used to exclude it from the dataset.
````r
row_label_test <- merge(subject_test, test_activity, by = "rowindx", all = TRUE)
row_label_test <- select(row_label_test, -c(activityid))

row_label_train <- merge(subject_train, train_activity, by = "rowindx", all = TRUE)
row_label_train <- select(row_label_train, -c(activityid))  

_head(row_label_test, n = 5)_  
rowindx subjectid activity
     1         2 STANDING  
     2         2 STANDING
     3         2 STANDING
     4         2 STANDING
     5         2 STANDING

** Review step of data**  
Below is a quick distribution of activities for each individual / subject id (subid)
Purpose: understand distribution for an individual and within an activity [signficant differences?]
attach(row_label_test)
table(subid, activity)
Results of table() for 'test' observations
subid LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS
2      48      46       54      59                 47               48
4      54      50       56      60                 45               52
9      50      50       45      52                 42               49
10     58      54       44      53                 38               47
12     60      51       61      50                 46               52
13     62      49       57      57                 47               55
18     65      57       73      56                 55               58
20     68      66       73      51                 45               51
24     72      68       69      58                 55               59
````










