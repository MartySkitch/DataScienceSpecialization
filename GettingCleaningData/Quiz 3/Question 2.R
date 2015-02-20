## Question 2
## Set the directory
setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Quiz 3")

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
destFile <- "./Fjeff.jpg"
if (!file.exists(destFile)) {
  download.file(fileUrl, destfile = destFile, mode="wb")
}
library(jpeg)
img <- readJPEG(destFile, native=TRUE)
quantile(img, native=TRUE, prob=c(0.3, 0.8))   ##        30%       80% 
##                                      -15259150 -10575416 
