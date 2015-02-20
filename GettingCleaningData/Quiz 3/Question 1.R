## Question 1
## Set the directory
setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Quiz 3")

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
destFile <- "./getdata_data_ss06hid.csv"
if (!file.exists(destFile)) {
  download.file(fileUrl, destfile = destFile)
}

acs <- read.csv(destFile)  

logVar <- acs$ACR == 3 & acs$AGS == 6

head(which(logVar))  ## [1] 125 238 262 470 555 568

