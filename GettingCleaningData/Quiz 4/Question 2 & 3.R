## Question 2 & 3
## Set the directory
setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Quiz 4")

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
destFile <- "./getdata_data_FGDP.csv"
if (!file.exists(destFile)) {
  download.file(fileUrl, destfile = destFile)
}
library(dplyr)

gdp <- read.csv(destFile, header = FALSE, skip = 5, na.strings = "NA", colClasses = "character", stringsAsFactors = FALSE )
gdp[,2] <- sapply( gdp[,2], as.numeric) 
gdp.filtered <-  filter(gdp, V2 > 0 & !is.na(V1))

moneyNew <- gsub(",", "", gdp.filtered$V5)

moneyFiltered <-  as.numeric(moneyNew)

mean(moneyFiltered, na.rm = TRUE)  ## 377652.4

## question 3

countryNames <- gdp.filtered$V4
grep("^United",countryNames)  #    1  6 32
