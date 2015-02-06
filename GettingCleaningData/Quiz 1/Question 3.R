## Question 3

## Set the directory
setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Quiz 1")
## Get the Natural Gas Aquisition Program data
## change to https: to http:
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
destFile <- "./NatGas.xlsx"
if (!file.exists(destFile)) {
  download.file(fileUrl, destfile = destFile, mode="wb")  ## mode is binary
}
library(xlsx)
colIndx <- 7:15
rowIndx <- 18:23
dat <- read.xlsx(destFile, sheetIndex = 1, colIndex = colIndx, rowIndex = rowIndx)
sum(dat$Zip*dat$Ext,na.rm=T)   ## Answer: 36534720
