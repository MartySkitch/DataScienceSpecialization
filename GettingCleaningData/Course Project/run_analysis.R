## Course Project

#run_analysis <- function() {

## Set the directory
setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Course Project")

##library(plyr)
##library(data.table)
## Get the Activitity labes
training.label.file <- "./UCI HAR Dataset/train/y_train.txt"
labels <- read.csv(training.label.file, header=FALSE)


## Get the Training Date
activityLableFile <- "./UCI HAR Dataset/activity_labels.txt"
activityLables <- read.csv(activityLableFile, sep = " ", header=FALSE)

newLabels <- join(labels, activityLables, by='V1')

subjectFile <- "./UCI HAR Dataset/train/subject_train.txt"
subjects <- read.csv(subjectFile, header=FALSE)


# read the large data files by first reading 5 rows to get the column classes
dataFile <- "./UCI HAR Dataset/train/X_train.txt"
first.5.rows <- read.table(dataFile, header=FALSE, nrows = 5)
classes <- sapply(first.5.rows, class)
dt_X <- read.table(dataFile, header=FALSE, colClasses = classes)

# Add the subject and label information to the data table
dt_X <- cbind(subjects, newLabels$V2, dt_X)

head(dt_X[1:5],)

#}






