## Question 4

## Set the directory
setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Quiz 1")
## Get the Baltimore Restaurant data
## change to https: to http:
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
destFile <- "./BaltimoreRestaurants.xlsx"
if (!file.exists(destFile)) {
  download.file(fileUrl, destfile = destFile)  ## mode is binary
}
library(XML)
doc <- xmlTreeParse(destFile, useInternal=TRUE)
zip <- data.frame(xpathSApply(rootNode, "//row//zipcode", xmlValue))
names(zip)[1] <- "zipCode"  ## rename the columne
library(dplyr)
numZip <- nrow(filter(zip, zipCode == "21231"))
numZip   ##   127
