## Question 2 & 3
## Set the directory
setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Quiz 2")
## change to https: to http:
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
destFile <- "./getdata-data-ss06pid.csv"
if (!file.exists(destFile)) {
  download.file(fileUrl, destfile = destFile)
}

acs <- read.csv(destFile)
library(sqldf)
#  Question 2
# Which ones select only the data for the probability weights pwgtp1 with ages less than 50

sqldf("select * from acs where AGEP < 50")              ## All columms for age less than 50
sqldf("select pwgtp1 from acs")                         ## Select all pwgtp1
sqldf("select pwgtp1 from acs where AGEP < 50")         ## Winner, winner chicken dinner
sqldf("select * from acs where AGEP < 50 and pwgtp1")  ## All columms for age less than 50 and 

#  Question 3
sqldf("select AGEP where unique from acs")  # Error
sqldf("select unique * from acs")           # Error
sqldf("select distinct AGEP from acs")      ## Winner, winner chicken dinner
sqldf("select unique AGEP from acs")        # Error


