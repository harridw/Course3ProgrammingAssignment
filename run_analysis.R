#  Coursera: Data Science Specialization: Course 3 - Getting & Cleaning Data
#  Peer-graded Assignment
#  
#  Assignment Requirements / Guidelines:
#  Source data:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
#  
#  You should create one R script called run_analysis.R that does the following. 
#  1.	Merges the training and the test sets to create one data set.
#  2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
#  3.	Uses descriptive activity names to name the activities in the data set
#  4.	Appropriately labels the data set with descriptive variable names. 
#  5.	From the data set in step 4, creates a second, independent tidy data set with the average of each
#     variable for each activity and each subject.
#  
#  Files / activity will be stored in Working Directory "/Users/harridw/Development/Coursera/Course3/PeerGraded"
#  To facilitate Peer Grading this must be defined as Working Directory of indvidual reviewing

#  Define directory / folder to download zipfile(s) from stated URL
path <- getwd()

#  Install packages to support Course 3 Programming Assignment
install.packages("plyr")
library(plyr)
install.packages("dplyr")
library(dplyr)
install.packages("data.tables")
library(data.table)
install.packages("dtplyr")
library(dtplyr)
install.packages("tidyr")
library(tidyr)
install.packages("reshape2")
library(reshape2)

################################################################
##  Obtain data from target location that may be manipulated  ##
##  or queried as needed to produce desired results.          ##
################################################################



# Downlaod zip file into the designated directory / folder
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dest_zip <- paste(file.path(path),"dataset.zip", sep = "/", collapse = NULL)
download.file(fileURL, destfile = dest_zip)

#  Unzip files -- placing in separate directory from the zip files
#  NOTE:  A directory tree is created by unzip process
dest_unzip <- file.path(path)
unzip(dest_zip, files = NULL, list = FALSE, overwrite = TRUE, junkpaths = TRUE,
      exdir = dest_unzip, unzip = "internal", setTimes = FALSE)


################################################################
##  Read target files into R to facilitate working with them  ##
################################################################


#  Create list of the target files.  To provide flexibility for which files, code is split into sections
filelist <- list.files(pattern = ".*.txt", all.files = FALSE, full.names = FALSE,
                              recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)

#  Remove text (txt) extension so that file name can be used as name in R -- facilitates loop
file_list <- gsub(".txt", "", filelist)


#  Read text files into R
for(i in file_list)  {
      filepath <- file.path(path = path, paste(i,".txt",sep=""))
      assign(i, data.table(read.table(filepath, fill = TRUE, header = FALSE)))
}


######################################################################
##  Clean dataset to make more functional / useful for further use  ##
##  This includes creating better variable names and creating       ##
##  a 'rowindx' that helps maintain integrity / accuracy of data    ##
######################################################################

#  Rename variables for 'activity_labels', 'subject_test', 'subject_train', 'y_test', 'y_train'
setnames(activity_labels, c("V1", "V2"), c("activityid", "activity"))
setnames(subject_test, c("V1"), c("subjectid"))
setnames(subject_train, c("V1"), c("subjectid"))
setnames(y_test, c("V1"), c("activityid"))
setnames(y_train, c("V1"), c("activityid"))

#  Create indexes for the different datasets to maintain order of observations in data provided
y_test$rowindx <- as.factor(seq(along = y_test$activityid))
y_train$rowindx <- as.factor(seq(along = y_train$activityid))
subject_test$rowindx <- as.factor(seq(along = subject_test$subjectid))
subject_train$rowindx <- as.factor(seq(along = subject_train$subjectid))

#  Add activity label / description to each observation in y_test and y_train
test_activity <- merge(y_test, activity_labels, by = "activityid")
train_activity <- merge(y_train, activity_labels, by = "activityid")

#  Merge / combine 'subject' data tables and 'activity' data for each row_id / observation
row_label_test <- merge(subject_test, test_activity, by = "rowindx", all = TRUE)
row_label_test <- select(row_label_test, -c(activityid))

row_label_train <- merge(subject_train, train_activity, by = "rowindx", all = TRUE)
row_label_train <- select(row_label_train, -c(activityid))


#  Below is a quick distribution of activities for each individual / subject id (subid)
#  Purpose: understand distribution for an individual and within an activity [signficant differences?]
attach(row_label_test)
table(subid, activity)
#  Results of table() for 'test' observations
#  subid LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS
#  2      48      46       54      59                 47               48
#  4      54      50       56      60                 45               52
#  9      50      50       45      52                 42               49
#  10     58      54       44      53                 38               47
#  12     60      51       61      50                 46               52
#  13     62      49       57      57                 47               55
#  18     65      57       73      56                 55               58
#  20     68      66       73      51                 45               51
#  24     72      68       69      58                 55               59


attach(row_label_train)
table(subid, activity)
#  Results of table() for 'test' observations
#  subid LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS
#  1      50      47       53      95                 49               53
#  3      62      52       61      58                 49               59
#  5      52      44       56      56                 47               47
#  6      57      55       57      57                 48               51
#  7      52      48       53      57                 47               51
#  8      54      46       54      48                 38               41
#  11     57      53       47      59                 46               54
#  14     51      54       60      59                 45               54
#  15     72      59       53      54                 42               48
#  16     70      69       78      51                 47               51
#  17     71      64       78      61                 46               48
#  19     83      73       73      52                 39               40
#  21     90      85       89      52                 45               47
#  22     72      62       63      46                 36               42
#  23     72      68       68      59                 54               51
#  25     73      65       74      74                 58               65
#  26     76      78       74      59                 50               55
#  27     74      70       80      57                 44               51
#  28     80      72       79      54                 46               51
#  29     69      60       65      53                 48               49
#  30     70      62       59      65                 62               65


#  Create character vector with 'feature' data to apply names for X_test and X_train
#  Also set flag to identify those variables for mean() and std()
measures <- setnames(features, c("V1", "V2"), c("indx", "feature"))
measures$stat <- ifelse(grepl(pattern = "mean()", measures$feature, ignore.case = FALSE, fixed = TRUE), "mean",
                        ifelse(grepl(pattern = "std()", measures$feature, ignore.case = FALSE, fixed = TRUE), "std", "other"))

measures$axial <- ifelse(grepl(pattern = "X", measures$feature, ignore.case = FALSE, fixed = TRUE), "X",
                              ifelse(grepl(pattern = "Y", measures$feature, ignore.case = FALSE, fixed = TRUE), "Y",
                              ifelse(grepl(pattern = "Z", measures$feature, ignore.case = FALSE, fixed = TRUE), "Z","U")))

measures$domain <- ifelse(grepl(pattern = "^f", measures$feature, ignore.case = FALSE), "f",
                              ifelse(grepl(pattern = "\\(f", measures$feature, ignore.case = FALSE), "f",
                              ifelse(grepl(pattern = "^t", measures$feature, ignore.case = FALSE), "t",
                              ifelse(grepl(pattern = "\\(t", measures$feature, ignore.case = FALSE), "t", "u"))))

#  Define a high-level category of the features [consistent with feature vector -- see CodeBook.R]
measures$category <- ifelse(grepl(pattern = "BodyAccJerkMag", measures$feature, ignore.case = FALSE, fixed = TRUE), "bodyaccjerkmag",
                        ifelse(grepl(pattern = "BodyAccJerk", measures$feature, ignore.case = FALSE, fixed = TRUE), "bodyaccjerk",
                        ifelse(grepl(pattern = "BodyAccMag", measures$feature, ignore.case = FALSE, fixed = TRUE), "bodyaccmag",
                        ifelse(grepl(pattern = "BodyAcc", measures$feature, ignore.case = FALSE, fixed = TRUE), "bodyacc",
                        ifelse(grepl(pattern = "BodyGyroJerkMag", measures$feature, ignore.case = FALSE, fixed = TRUE), "bodygyrojerkmag",
                        ifelse(grepl(pattern = "BodyGyroJerk", measures$feature, ignore.case = FALSE, fixed = TRUE), "bodygyrojerk",
                        ifelse(grepl(pattern = "BodyGyroMag", measures$feature, ignore.case = FALSE, fixed = TRUE), "bodygyromag",
                        ifelse(grepl(pattern = "BodyGyro", measures$feature, ignore.case = FALSE, fixed = TRUE), "bodygyro",
                        ifelse(grepl(pattern = "GravityAccMag", measures$feature, ignore.case = FALSE), "gravityaccmag",
                        ifelse(grepl(pattern = "GravityAcc", measures$feature, ignore.case = FALSE), "gravityacc", "unknown"))))))))))
measures$clearname <- paste(measures$domain, measures$category, "_", measures$stat, measures$axial, sep = "")


measures_filter <- filter(measures, stat != "other")


#  To help validate results in dataset, I ran table() function to provide distribution of above items
#  This suggest a total of 66 column names with mean() or std().  'U' indicates that it is not specific to 'X', 'Y', or 'Z'
#  Using below data, the tidy dataset should have 68 columns, including subject id and activity
addmargins(table(measures$stat, measures$axial))
#         U   X   Y   Z Sum
#  mean    9   8   8   8  33
#  other 237  91  86  81 495
#  std     9   8   8   8  33
#  Sum   255 107 102  97 561


##########################################################
##  Creating 'tidy data' from the cleansed data tables  ##
##########################################################

#  Include only those colums in X_test & X_train defined by filter criteria --> mean()/std()
X_test_filter <- select(X_test, c(measures_filter$indx))
X_train_filter <- select(X_train, c(measures_filter$indx))

#  Adding clearer, or more descriptive, column names for the different variables
curr_names_test <- names(X_test_filter)
curr_names_train <- names(X_train_filter)
new_names <- c(measures_filter$clearname)
setnames(X_test_filter, c(curr_names_test), c(new_names))
setnames(X_train_filter, c(curr_names_train), c(new_names))

#  Combine, using cbind() function, the labels (subjectid, activity) for each observation
X_test_interim <- cbind(row_label_test, X_test_filter)
X_test_interim <- select(X_test_interim, -rowindx)
X_train_interim <- cbind(row_label_train, X_train_filter)
X_train_interim <- select(X_train_interim, -rowindx)

#  Create a 'test' & 'train' combined dataset for the individual observations, prior to group_by subjectid & activity
X_total_interim <- rbind(X_test_interim, X_train_interim)

#  There are multiple rows for the same subjectid & activity --> creating single instance using melt() / dcast() functions
#  Although it may not be appropriate for the data, we are asked to provide average (mean) of each instance.
X_test_melt <- melt(X_test_interim, id = c("subjectid", "activity"))
X_train_melt <- melt(X_train_interim, id = c("subjectid", "activity"))

#  Create unique instance based on 'subjectid' and 'activity'
X_test_final <- dcast(X_test_melt, subjectid+activity ~ variable, fun = mean)
X_train_final <- dcast(X_train_melt, subjectid+activity ~ variable, fun = mean)

#  Create a 'test' & 'train' combined dataset for the individual observations, after 'melting' for subjectid & activity
X_tidy_data <- rbind(X_test_final, X_train_final)


######################################################
##  Save datasets in R to local directory / folder  ##
######################################################
#  Start by assigning target location as working directory, then write datasets to location as 'txt' file
write.csv(X_tidy_data, file = "X_tidy_data.txt", row.names = FALSE)
