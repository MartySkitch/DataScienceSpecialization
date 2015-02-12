## Course Project

run_analysis <- function() {

## Set the directory
setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Course Project")

library(plyr)
library(data.table)

## Get the Activitity labes  
## This will be common for both Training and Test data
activityLableFile <- "./UCI HAR Dataset/activity_labels.txt"
activityLables <- read.csv(activityLableFile, sep = " ", header=FALSE)

# Get the mean() and std() columns to keep
keep <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241,
          253:254, 266:271, 294:296, 345:350, 373:375, 424:429, 452:454,
           503:504, 513, 516:517, 526, 529:530, 539, 542:543, 552, 555:561)
column.Names <- c("SubjectID", "Activity")


## Get the Training Date
training.label.file <- "./UCI HAR Dataset/train/y_train.txt"
trainingLabels <- read.csv(training.label.file, header=FALSE)

newTrainingLabels <- join(trainingLabels, activityLables, by='V1')

trainingSubjectFile <- "./UCI HAR Dataset/train/subject_train.txt"
trainingSubjects <- read.csv(trainingSubjectFile, header=FALSE)


# read the large data files by first reading 5 rows to get the column classes
trainingDataFile <- "./UCI HAR Dataset/train/X_train.txt"
first.5.rows <- read.table(trainingDataFile, header=FALSE, nrows = 5)
classes <- sapply(first.5.rows, class)
dt.Training.X <- read.table(trainingDataFile, header=FALSE, colClasses = classes)

## Keep on the columns of interest
dt.Training.X <- subset(dt.Training.X, , keep)

# Add the subject and label information to the data table
dt.Training.X <- cbind(trainingSubjects, newTrainingLabels$V2, dt.Training.X)

# Rename the columns
names(dt.Training.X) <- column.Names

## Get the Test Data
test.label.file <- "./UCI HAR Dataset/test/y_test.txt"
testLabels <- read.csv(test.label.file, header=FALSE)

newTestLabels <- join(testLabels, activityLables, by='V1')

testSubjectFile <- "./UCI HAR Dataset/test/subject_test.txt"
testSubjects <- read.csv(testSubjectFile, header=FALSE)


# read the large data files by first reading 5 rows to get the column classes
testDataFile <- "./UCI HAR Dataset/test/X_test.txt"
first.5.rows <- read.table(testDataFile, header=FALSE, nrows = 5)
classes <- sapply(first.5.rows, class)
dt.Test.X <- read.table(testDataFile, header=FALSE, colClasses = classes)

## Keep on the columns of interest
dt.Test.X <- subset(dt.Test.X, , keep)

# Add the subject and label information to the data table
dt.Test.X <- cbind(testSubjects, newTestLabels$V2, dt.Test.X)

# Rename the columns
names(dt.Test.X) <- column.Names

dt.X <- rbind(dt.Training.X, dt.Test.X)

head(dt.Test.X[1:10],)
head(dt.Training.X[1:10],)
rm(activityLables, first.5.rows)
rm(dt.Test.X, newTestLabels,  testLabels, testSubjects)
rm(dt.Training.X, newTrainingLabels, trainingLabels, trainingSubjects)

head(dt.X[1:10],)

dt.X

}






