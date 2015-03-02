## Question 5
## Set the directory
setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Quiz 4")

library(dplyr)
library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
amznYear <- amzn['2015']
sampleTimes = index(amznYear) 
## convert to data.frame
sampleTimesDF <- data.frame(sampleTimes)
nrow(sampleTimesDF)  ## 250

names(sampleTimesDF) 

names(sampleTimesDF) <- "date"
sampleTimesDF$day <- weekdays(sampleTimesDF$date)
##filter(sampleTimesDF, day == "Monday")
nrow(filter(sampleTimesDF, day == "Monday"))  ## 47
