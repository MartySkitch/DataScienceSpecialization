## Question 1
## Set the directory
setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Quiz 4")

## Get the code book
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf"
destFile <- "./Code Book.pdf"
if (!file.exists(destFile)) {
  download.file(fileUrl, destfile = destFile, mode="wb")  ## mode is binary
}

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
destFile <- "./getdata_data_ss06hid.csv"
if (!file.exists(destFile)) {
  download.file(fileUrl, destfile = destFile)
}

acs <- read.csv(destFile)  

splitNames <- strsplit(names(acs), "wgtp")

splitNames[123]
#[1] ""   "15"