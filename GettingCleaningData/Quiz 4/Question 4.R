## Question 4
## Set the directory
setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Quiz 4")

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
eduFile <- "./getdata_data_FEDSTATS_Country.csv"
if (!file.exists(eduFile)) {
  download.file(fileUrl, destfile = eduFile)
}

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
destFile <- "./getdata_data_FGDP.csv"
if (!file.exists(destFile)) {
  download.file(fileUrl, destfile = destFile)
}
library(dplyr)

gdp <- read.csv(destFile, header = FALSE, skip = 5, na.strings = "NA", colClasses = "character", stringsAsFactors = FALSE )
gdp[,2] <- sapply( gdp[,2], as.numeric) 
gdp.filtered <-  filter(gdp, V2 > 0 & !is.na(V1))

edu <- read.csv(eduFile, header = TRUE, na.strings = "NA", colClasses = "character", stringsAsFactors = FALSE )

grep("[Ff]iscal year end(.*)[Jj]une", edu$Special.Notes)  ##   [1]  11  18  31  60  76 105 112 166 173 188 199 216 234
length(grep("[Ff]iscal year end(.*)[Jj]une", edu$Special.Notes))   ##  13
