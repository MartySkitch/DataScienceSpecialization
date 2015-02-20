## Question 3
## Set the directory
setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Quiz 3")

library(dplyr)

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
destFile <- "./FGDP.csv"
if (!file.exists(destFile)) {
  download.file(fileUrl, destfile = destFile)
}

gdp.2012 <- read.csv(destFile, header = FALSE, skip = 5, na.strings = "NA", colClasses = "character", stringsAsFactors = FALSE )
gdp.2012[,2] <- sapply( gdp.2012[,2], as.numeric) 
gdp.2012.filtered <-  filter(gdp.2012, V2 > 0 & !is.na(V1))

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
destFile <- "./FEDSTATS_Country.csv"
if (!file.exists(destFile)) {
  download.file(fileUrl, destfile = destFile)
}
fed.st.ctry <- read.csv(destFile)

all <- merge(gdp.2012.filtered, fed.st.ctry, by.x = "V1", by.y = "CountryCode")

all.sorted <- arrange(all, desc(V2))  ## 189 countries sorted by rank desc has St. Kitts and Nevis as the 13th

## Question 4

grouped <- group_by(all.sorted, Income.Group)
summarise(grouped, mean=mean(V2))    ## 32.96667, 91.91304

## Question 5

all.sorted <- mutate(all.sorted, RankGrp=cut2(V2, g=5))
table(all.sorted$RankGrp, all.sorted$Income.Group)

High income: nonOECD High income: OECD Low income Lower middle income Upper middle income
#[  1, 39)  0                    4                18          0                   5                  11
#[ 39, 77)  0                    5                10          1                  13                   9
#[ 77,115)  0                    8                 1          9                  12                   8
#[115,154)  0                    5                 1         16                   8                   8
#[154,190]  0                    1                 0         11                  16                   9

