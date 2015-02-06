## Question 1

## Set the directory
setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Quiz 1")
## Get the code book
## change to https: to http:
fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf"
destFile <- "./Code Book.pdf"
if (!file.exists(destFile)) {
  download.file(fileUrl, destfile = destFile, mode="wb")  ## mode is binary
}
## Get the data
## change to https: to http:
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
destFile <- "./Housing.csv"
if (!file.exists(destFile)) {
  download.file(fileUrl, destfile = destFile)
}
outcome.data <- read.csv(destFile)
library(dplyr)
data.ID <- filter(outcome.data, ST==16, VAL == 24)  ## only ID and Million dollar houses
nrow(data.ID)  ## result = 53
