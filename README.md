###  **Course3ProgrammingAssignment**  
Repository for Course 3 Getting and Cleaning Data Programming Assignment

#### **Requirements / guidelines for programming assignment:**  
You should create one R script called run_analysis.R that does the following. 
1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names. 
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable
for each activity and each subject.

#### **Load packages**  
This represents a list of the packages anticipated to be used during the assignment
````r
library(plyr)
library(dplyr)
library(data.table)
library(dtplyr)
library(tidyr)
library(reshape2)
````

#### **Background information for data**   
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:  

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

Here are the data for the project:  

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  


#### **Download zip file to local directory / folder**  
````r
Define directory to place zip file:  
===================================
setwd ("/Users/harridw/Development/Coursera/Course3/PeerGraded")
maindir <- "/Users/harridw/Development/Coursera/Course3/PeerGraded/Course3ProgrammingAssignment"   

Steps to download file:  
=======================
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"  
dest_zip <- paste(file.path(maindir),"dataset.zip", sep = "/", collapse = NULL)  
download.file(fileURL, destfile = dest_zip)  
````

#### **Unzip files into separate directory / folder**  
NOTE: Use maindir defined above -- 'maindir'  
````r
unzipdir <- "unzipfiles"  
dest_unzip <- file.path(maindir)  
unzip(dest_zip, files = NULL, list = FALSE, overwrite = TRUE, junkpaths = FALSE,  
      exdir = dest_unzip, unzip = "internal", setTimes = FALSE)  
````

A number of text files were generated, and saved to 'unzip' folder defined above.  Three groups or categories of files were produced: a general, test, and train.  The 'general' text files provide documentation about the data which applies to both 'test' and 'train' data.  The specific files are listed below.  A CodeBook.md file is available to provide an understanding of the data collected and included in the zip file.  

The text files are as follows:  
#### **General / Main**    
1. activity_labels.txt  
2. features_info.txt  
3. features.txt  
4. README.txt  

#### **test - subfolder of General / Main**    
1. subject_test.txt 
2. X_test.txt  
3. y_test.txt  
```
#### **Inertial Signals (test subfolder)**  
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
- unzipdir <- "UCI HAR Dataset"
- unzip_main <- file.path(dest_unzip, unzipdir)

Read text files into R from the 'root' test directory / folder [NOTE: multiple files]
- unzip_filelist1 <- list.files(path = unzip_main, pattern = ".*.txt", all.files = FALSE, full.names = FALSE,
                              recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

Remove text (txt) extension so that file name can be used as name in R
- file_unzip1 <- gsub(".txt", "", unzip_filelist1)

Read all listed files into R  
- for(i in file_unzip1)  {
      filepath <- file.path(unzip_main, paste(i,".txt",sep=""))
      assign(i, data.table(read.table(filepath, fill = TRUE, header = FALSE)))
  }


test 'txt' files, including Inertial Signals  

The initial step is to more clearly define / document the 'path' to location of files
- testdir <- "UCI HAR Dataset/test"
- test_inertial_signals <- "Inertial Signals"
- test_main <- file.path(dest_unzip, testdir)
- test_inertial <- file.path(test_main, test_inertial_signals)

Read text files into R from the 'root' test directory / folder [NOTE: multiple files]
- test_filelist1 <- list.files(path = test_main, pattern = ".*.txt", all.files = FALSE, full.names = FALSE,
                             recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

Remove text (txt) extension so that file name can be used as name in R
- file_names1 <- gsub(".txt", "", test_filelist1)

- for(i in file_names1)  {
      filepath <- file.path(test_main,paste(i,".txt",sep=""))
      assign(i, data.table(read.table(filepath, header = FALSE)))
  }

Read text files into R from the 'Inertial Signals' folder of 'test' directory / folder [NOTE: multiple files]
- test_filelist2 <- list.files(path = test_inertial, pattern = ".*.txt", all.files = FALSE, full.names = FALSE,
                             recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

Remove text (txt) extension so that file name can be used as name in R
- file_names2 <- gsub(".txt", "", test_filelist2)

- for(i in file_names2)  {
      filepath <- file.path(test_inertial,paste(i,".txt",sep=""))
      assign(i, data.table(read.table(filepath, header = FALSE)))
  }

train 'txt' files, including Inertial Signals  

The initial step is to more clearly define / document the 'path' to location of files
- traindir <- "UCI HAR Dataset/train"
- train_inertial_signals <- "Inertial Signals"
- train_main <- file.path(dest_unzip, traindir)
- train_inertial <- file.path(train_main, train_inertial_signals)

Read text files into R from the 'root' train directory / folder [NOTE: multiple files]
- train_filelist1 <- list.files(path = train_main, pattern = ".*.txt", all.files = FALSE, full.names = FALSE,
                              recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

Remove text (txt) extension so that file name can be used as name in R
- file_train1 <- gsub(".txt", "", train_filelist1)

- for(i in file_train1)  {
      filepath <- file.path(train_main,paste(i,".txt",sep=""))
      assign(i, data.table(read.table(filepath, header = FALSE)))
  }

Read text files into R from the 'Inertial Signals' folder of 'train' directory / folder [NOTE: multiple files]
- train_filelist2 <- list.files(path = train_inertial, pattern = ".*.txt", all.files = FALSE, full.names = FALSE,
                              recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

Remove text (txt) extension so that file name can be used as name in R
- file_train2 <- gsub(".txt", "", train_filelist2)

- for(i in file_train2)  {
      filepath <- file.path(train_inertial,paste(i,".txt",sep=""))
      assign(i, data.table(read.table(filepath, header = FALSE)))
  }
````

#### **Cleaning the Data**  
To combine, or merge, datasets with more descriptive information about an observation to the variables, a first step  
is preparing the data within each file / dataset.  Below are steps pursued:

Remaming columns in a couple tables in lieu of default names (e.g. V1, V2...) when read into R
````r
- setnames(activity_labels, c("V1", "V2"), c("activityid", "activity"))
- setnames(subject_test, c("V1"), c("subjectid"))
- setnames(subject_train, c("V1"), c("subjectid"))
- setnames(y_test, c("V1"), c("activityid"))
- setnames(y_train, c("V1"), c("activityid"))
````

Creating indexes for files to improve merging of datasets.  Of particular interest is to maintain the order
observations are stored in  the dataset --> consistency with variable datasets (X_test, X_train)
````r
- y_test$rowindx <- as.factor(seq(along = y_test$activityid))
- y_train$rowindx <- as.factor(seq(along = y_train$activityid))
- subject_test$rowindx <- as.factor(seq(along = subject_test$subjectid))
- subject_train$rowindx <- as.factor(seq(along = subject_train$subjectid))
````

#### **Merge/Combine Datasets - Part 1**  
The first datasets to be merged relate to descriptive information about an observation (e.g. subject id, activity).  
These datasets will be merged, or combined [using cbind()], with the variable datasets to provide more complete dataset.

**Step 1:  Merge 'activity' datasets**  
The 'activity_labels' dataset represents a table of the description for each of 6 (index: 1 - 6) defined activities.  
For each observation, the datasets 'y_test' and 'y_train' identify the activity.  A 'rowindx' was added (see initial steps
to 'Cleaning the Data' stated above) to both datasets, 'y_test' and 'y_train'  

NOTE:  'activityid' is name assigned to id of activity in datasets: activtiy_labels, y_test, y_train
````r
Add activity label / description to each observation in y_test and y_train  
- test_activity <- merge(y_test, activity_labels, by = "activityid")
- train_activity <- merge(y_train, activity_labels, by = "activityid")  

head(test_activity, n = 5)  
activityid rowindx activity
    1        80    WALKING
    1        81    WALKING
    1        82    WALKING
    1        83    WALKING
    1        84    WALKING
````

**Step 2:  Merge 'subject' and 'activity' datasets**    
This step produces a more complete picture, or description, of each observation, before including variables.  The 'rowindx'
previously noted is used in this step to merge files and maintain the order of each observation listed in the dataset.  To  
remove unnecessary data, 'activityid', a select() is used to exclude it from the dataset.
````r
- row_label_test <- merge(subject_test, test_activity, by = "rowindx", all = TRUE)
- row_label_test <- select(row_label_test, -c(activityid))

- row_label_train <- merge(subject_train, train_activity, by = "rowindx", all = TRUE)
- row_label_train <- select(row_label_train, -c(activityid))  

head(row_label_test, n = 5)  
rowindx subjectid activity
     1         2 STANDING  
     2         2 STANDING
     3         2 STANDING
     4         2 STANDING
     5         2 STANDING

A Review Step

Below is a quick distribution of activities for each individual / subject id (subid)
Purpose: understand distribution for an individual and within an activity [signficant differences?]  
- attach(row_label_test)
- table(subid, activity)

Results of table() for 'test' observations:  
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

#### **'Features' Dataset**  
The 'features' dataset is a vector of the 561 variable column-names represented in 'X_test' and 'X_train'.  Two requirements  
of the assignment, include:  
1.	Extracts only the measurements on the mean and standard deviation for each measurement. 
2.	Appropriately labels the data set with descriptive variable names.  

Below are steps taken to identify those coloumns representing a measurement of mean and standard deviation.  To do this, we
look at each 'feature' to for phrase "mean()" or "std()".  A flag is to identify these variables appropriately.  All other    
variables are defaulted with a flag of 'other'.  To maintain integrity of original 'features' dataset, a new 'measures    
data is used to capture these updates to the dataset.  
````r
measures <- setnames(features, c("V1", "V2"), c("indx", "feature"))  
head(features, n = 5)
indx           feature
 1    tBodyAcc-mean()-X
 2    tBodyAcc-mean()-Y
 3    tBodyAcc-mean()-Z
 4    tBodyAcc-std()-X
 5    tBodyAcc-std()-Y
````

A new column is added, 'stat', to capture flag identifying the variable as 'mean()', 'std()', or 'other'. The  
grepl() function looks for the defined 'phrase' in the variable name.  If it finds a match, it returns 'TRUE'.  Using  
the ifelse(), we can determine what action, or step, to take next.  It is used here to set flag defining the variable.
````r
measures$stat <- ifelse(grepl(pattern = "mean()", measures$feature, ignore.case = FALSE, fixed = TRUE), "mean",
                        ifelse(grepl(pattern = "std()", measures$feature, ignore.case = FALSE, fixed = TRUE),
                                    "std", "other"))  
````

To address the second requirement, appropriately label the data set with descriptive variable names, the names are  
further split or categorize the variable names.  Three additional columns are added to create a label to be used for
createing a descriptive name.  The grepl() function with ifelse() is again used to assign desired labels to each variable.  
````r
Define a high-level category of the features [consistent with feature vector -- see CodeBook.R]
- measures$category <- ifelse(grepl(pattern = "BodyAccJerkMag", measures$feature, ignore.case = FALSE, fixed = TRUE), "bodyaccjerkmag",
                        ifelse(grepl(pattern = "BodyAccJerk", measures$feature, ignore.case = FALSE, fixed = TRUE), "bodyaccjerk",
                        ifelse(grepl(pattern = "BodyAccMag", measures$feature, ignore.case = FALSE, fixed = TRUE), "bodyaccmag",
                        ifelse(grepl(pattern = "BodyAcc", measures$feature, ignore.case = FALSE, fixed = TRUE), "bodyacc",
                        ifelse(grepl(pattern = "BodyGyroJerkMag", measures$feature, ignore.case = FALSE, fixed = TRUE), "bodygyrojerkmag",
                        ifelse(grepl(pattern = "BodyGyroJerk", measures$feature, ignore.case = FALSE, fixed = TRUE), "bodygyrojerk",
                        ifelse(grepl(pattern = "BodyGyroMag", measures$feature, ignore.case = FALSE, fixed = TRUE), "bodygyromag",
                        ifelse(grepl(pattern = "BodyGyro", measures$feature, ignore.case = FALSE, fixed = TRUE), "bodygyro",
                        ifelse(grepl(pattern = "GravityAccMag", measures$feature, ignore.case = FALSE), "gravityaccmag",
                        ifelse(grepl(pattern = "GravityAcc", measures$feature, ignore.case = FALSE), "gravityacc", "unknown"))))))))))

This identifies measurement variables based on '(t)ime' or '(f)requency'.
- measures$domain <- ifelse(grepl(pattern = "^f", measures$feature, ignore.case = FALSE), "f",
                              ifelse(grepl(pattern = "\\(f", measures$feature, ignore.case = FALSE), "f",
                              ifelse(grepl(pattern = "^t", measures$feature, ignore.case = FALSE), "t",
                              ifelse(grepl(pattern = "\\(t", measures$feature, ignore.case = FALSE), "t", "u"))))


Measurements were taken on three axials ('X', 'Y", 'Z').  This code assigns measurement variable accordingly
- measures$axial <- ifelse(grepl(pattern = "X", measures$feature, ignore.case = FALSE, fixed = TRUE), "X",
                              ifelse(grepl(pattern = "Y", measures$feature, ignore.case = FALSE, fixed = TRUE), "Y",
                              ifelse(grepl(pattern = "Z", measures$feature, ignore.case = FALSE, fixed = TRUE), "Z","U")))
````

A final column, 'clearname', is added.  This column represents a combination of other columns using paste() function.  
This is the name to be used for variable names of the tidy data set.  
````r
measures$clearname <- paste(measures$domain, measures$category,"_", measures$stat, measures$axial, sep = "")  

head(measures, n = 5)
indx       feature    stat  axial domain category      clearname
 1 tBodyAcc-mean()-X  mean     X      t  bodyacc   tbodyacc_meanX
 2 tBodyAcc-mean()-Y  mean     Y      t  bodyacc   tbodyacc_meanY
 3 tBodyAcc-mean()-Z  mean     Z      t  bodyacc   tbodyacc_meanZ
 4  tBodyAcc-std()-X  std      X      t  bodyacc   tbodyacc_stdX
 5  tBodyAcc-std()-Y  std      Y      t  bodyacc   tbodyacc_stdY
````

A final step required is to filter results to those columns that are 'mean' or 'std'.  A filter() function is    
used to accomplish this task.  To better understand the expected results of the filter, a distribution is  
created using table() function. As noted below, there are 66 columns with 'mean' or 'std'.  The filter ()  
used includes variable names that are not 'other' in measures$stat.
````r
addmargins(table(measures$stat, measures$axial))
        U   X   Y   Z Sum
mean    9   8   8   8  33
other 237  91  86  81 495
std     9   8   8   8  33
Sum   255 107 102  97 561

measures_filter <- filter(measures, stat != "other")
````

#### **Desired variables**
NOTE:  The filter() function only limits the rows included in the result based on criteria applied.  We want to  
include on those rows where 'stat' column is 'mean' or 'std', creating 66 variable columns (rows in measures dataset)  
To select only those columns from 'X_test' and 'X_test' that meet this criteria, we use vector of 'indx' in the  
measures data of the filtered results (66 columns).  There are two steps.  First, select the desired variable columns.  
Next, replace the default names (V1, V2, etc...) with the clearnames from the measures table.  
````r
Include only those colums in X_test & X_train defined by filter criteria --> mean()/std() + ('X', 'Y', 'Z')
- X_test_filter <- select(X_test, c(measures_filter$indx))
- X_train_filter <- select(X_train, c(measures_filter$indx))

Adding clearer, or more descriptive, column names for the different variables
- curr_names_test <- names(X_test_filter)
- curr_names_train <- names(X_train_filter)
- new_names <- c(measures_filter$clearname)
- setnames(X_test_filter, c(curr_names_test), c(new_names))
- setnames(X_train_filter, c(curr_names_train), c(new_names))
````

#### **Merge/Combine Datasets - Part 2**  
Here we are combining the observation labels from 'row_label_test' and 'row_labels_train' with the variable data in  
'X_test_filter' and 'X_train_filter'.  We will be using cbind() function to combine the datasets.  After cobmining  
the datasets, a select() function is used to remove 'rowindx' from the dataset.  It is no longer needed in data.  
````r
Combine, using cbind() function, the labels (subjectid, activity) for each observation
- X_test_interim <- cbind(row_label_test, X_test_filter)
- X_test_interim <- select(X_test_interim, -rowindx)
- X_train_interim <- cbind(row_label_train, X_train_filter)
- X_train_interim <- select(X_train_interim, -rowindx)

head(X_test_interim, n = 3) --> not all columns represented below
subjectid   activity    tbodyacc_meanX    tbodyacc_meanY tbodyacc_meanZ tbodyacc_stdX
       2    STANDING      0.2571778       -0.02328523    -0.01465376    -0.9384040
       2    STANDING      0.2860267       -0.01316336    -0.11908252    -0.9754147
       2    STANDING      0.2754848       -0.02605042    -0.11815167    -0.9938190
````

#### **Melting** 
The last merge / combine activities results in two dataset.  One represents the 'test' population (X_test_interim)  
the other is 'train' population (X_train_interim).  Because there are multiple observations for each subjectid 
and activity it does not qualify as 'tidy' data.  The melt() function to define a relationship between ids  
(subjectid, activity) and measures (variables).  By default, if not an 'id' it is a measure.
````r
X_test_melt <- melt(X_test_interim, id = c("subjectid", "activity"))
X_train_melt <- melt(X_train_interim, id = c("subjectid", "activity"))
````

#### **Unique subjectid & activity** 
The dcast() function enables us to combine variables for like 'id' (subjectid, activity) according to some function.  
Mean is used in this assignment, but others are possible.  The result is a single row/observation for each subjectid  
& activity cobmination.  The resulting variable represents the mean() of the input values.  
````r
X_test_final <- dcast(X_test_melt, subjectid+activity ~ variable, fun = mean)
X_train_final <- dcast(X_train_melt, subjectid+activity ~ variable, fun = mean)
````

#### **Tidy Data** 
With dataset scrubbed, we can create a single 'tidy' data file that combines 'test' & 'train' populations.  The rbind()  
function is used to complete this action.  The resulting file is 180 rows (6 activities for 30 subject id) by  
68 columns (2 label columns + 66 variable columns).

NOTE:  No specific order was applied to data table.
````r
X_tidy_data <- rbind(X_test_final, X_train_final)

dim(X_tidy_data)
[1] 180  68

head(X_tidy_data, n = 3)
  subjectid activity tbodyacc_meanX tbodyacc_meanY tbodyacc_meanZ tbodyacc_stdX
        2   LAYING      0.2813734    -0.01815874     -0.1072456    -0.9740595
        2   SITTING     0.2770874    -0.01568799     -0.1092183    -0.9868223
        2   STANDING    0.2779115    -0.01842083     -0.1059085    -0.9872719
````

#### **Save the file** 
This final steep saves 'X_tidy_data' to a local directory / folder.  Two separate type of files were saved:  
'.RData' and '.csv'.  We use the setwd() function to save the file in the desired location.  
````r
setwd ("/Users/harridw/Development/Coursera/Course3/PeerGraded/Course3ProgrammingAssignment")
save(X_tidy_data, file = "X_tidy_data.RData")
write.csv(X_tidy_data, file = "X_tidy_data.csv")
````





