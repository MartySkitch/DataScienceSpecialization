## Question 4
## Set the directory
setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Quiz 2")

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"

## Thanks Stackoverflow http://stackoverflow.com/questions/14383710/read-fixed-width-text-file
cloud.data <- read.fwf(
  file=fileUrl,
  skip=4,
  widths=c(12, 7,4, 9,4, 9,4, 9,4))

head(cloud.data)

sum(cloud.data$V4) 


