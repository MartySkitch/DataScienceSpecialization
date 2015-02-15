## Course Project

run_analysis <- function() {

## Set the directory
##setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Course Project")

library(dplyr)
library(data.table)

## Get the Activitity labes  
## This will be common for both Training and Test data
activityLableFile <- "./UCI HAR Dataset/activity_labels.txt"
activityLables <- read.csv(activityLableFile, sep = " ", header=FALSE)

## Get the Column names
featureFile <- "./UCI HAR Dataset/features.txt"
featureColumns <- read.csv(featureFile, sep = " ", header=FALSE)

# Get the mean() and std() columns to keep
keep <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241,
          253:254, 266:271, 294:296, 345:350, 373:375, 424:429, 452:454,
           503:504, 516:517, 526, 529:530, 539, 542:543)

## These are the columns that are going to be added to the data to 
## identify the subjects and activities
new.Column.Names <- c("SubjectID", "Activity")

## Get the Training Data
training.label.file <- "./UCI HAR Dataset/train/y_train.txt"
trainingLabels <- read.csv(training.label.file, header=FALSE)

trainingSubjectFile <- "./UCI HAR Dataset/train/subject_train.txt"
trainingSubjects <- read.csv(trainingSubjectFile, header=FALSE)

# read the large data files 
trainingDataFile <- "./UCI HAR Dataset/train/X_train.txt"
dt.Training.X <- read_data_file(trainingDataFile)

# Rename all the columns to the feature names
names(dt.Training.X) <- featureColumns[,2]

## Keep on the columns of interest
dt.Training.X <- subset(dt.Training.X, , keep)

# Add the subject and label information to the data table
dt.Training.X <- cbind(trainingSubjects, trainingLabels, dt.Training.X)

# Rename the columns
colnames(dt.Training.X)[1:2]<- new.Column.Names

# Merge the activity IDs to the labels
dt.Training.X <- merge(dt.Training.X, activityLables, by.x ='Activity', by.y ='V1')

# Rearrange the columns
dt.Training.X <- select(dt.Training.X, c(2,80,3:79)) %>% arrange(SubjectID, V2)
# Rename the columns
colnames(dt.Training.X)[1:2]<- new.Column.Names


## Get the Test Data
test.label.file <- "./UCI HAR Dataset/test/y_test.txt"
testLabels <- read.csv(test.label.file, header=FALSE)

testSubjectFile <- "./UCI HAR Dataset/test/subject_test.txt"
testSubjects <- read.csv(testSubjectFile, header=FALSE)

# read the large data files by first reading 5 rows to get the column classes
testDataFile <- "./UCI HAR Dataset/test/X_test.txt"
dt.Test.X <- read_data_file(testDataFile)

# Rename all the columns to the feature names
names(dt.Test.X) <- featureColumns[,2]

## Keep on the columns of interest
dt.Test.X <- subset(dt.Test.X, , keep)

# Add the subject and label information to the data table
dt.Test.X <- cbind(testSubjects, testLabels, dt.Test.X)

# Rename the columns
colnames(dt.Test.X)[1:2]<- new.Column.Names

# Merge the activity IDs to the labels
dt.Test.X <- merge(dt.Test.X, activityLables, by.x ='Activity', by.y ='V1')

# Rearrange the columns
dt.Test.X <- select(dt.Test.X, c(2,80,3:79)) %>% arrange(SubjectID, V2)

# Rename the columns
colnames(dt.Test.X)[1:2]<- new.Column.Names

# Combine the test and training data
dt.X <- rbind(dt.Training.X, dt.Test.X)

out <- write.table(dt.X, "./tidyData.txt",  sep = " ", col.names = TRUE, row.names = FALSE)

##  Need to verify that this outputs the correct data
dt.mean <- dt.X %>% group_by(SubjectID, Activity) %>% summarise_each(funs(mean))
out <- write.table(dt.mean, "./tidyDataMean.txt",  sep = " ", col.names = TRUE, row.names = FALSE)

dt.X

}

read_data_file <- function(dataFile){
  first.5.rows <- read.table(dataFile, header=FALSE, nrows = 5)
  classes <- sapply(first.5.rows, class)
  dt <- read.table(dataFile, header=FALSE, colClasses = classes)
  dt
}




