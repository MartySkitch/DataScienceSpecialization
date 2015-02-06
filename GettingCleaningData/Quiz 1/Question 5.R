## Question 5

## Set the directory
setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/GettingCleaningData/Quiz 1")
## change to https: to http:
fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv "
destFile <- "./Survey.csv"
if (!file.exists(destFile)) {
  download.file(fileUrl, destfile = destFile)
}
library(data.table)
DT <- fread(destFile)

ptm <- proc.time()
print("A")
for (i in 1:1000){
  tapply(DT$pwgtp15,DT$SEX,mean)   
}
proc.time() - ptm
tapply(DT$pwgtp15,DT$SEX,mean)   ## user = 2.17

ptm <- proc.time()
print("B")
for (i in 1:1000){
  mean(DT$pwgtp15,by=DT$SEX)  ## Does not answer the question 
}
proc.time() - ptm
mean(DT$pwgtp15,by=DT$SEX)

ptm <- proc.time()
print("C")
for (i in 1:1000){
  DT[,mean(pwgtp15),by=SEX]
}
proc.time() - ptm
DT[,mean(pwgtp15),by=SEX]     ## user = 1.22

ptm <- proc.time()
print("D")
for (i in 1:1000){
  sapply(split(DT$pwgtp15,DT$SEX),mean)
}
proc.time() - ptm
sapply(split(DT$pwgtp15,DT$SEX),mean)  ## user = 1.19 Winner winner chicken dinner

ptm <- proc.time()
print("E")
for (i in 1:1000){
  mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15)
}
proc.time() - ptm
mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15) ## user = 65.75

## This fails 
# ptm <- proc.time()
# print("F")
# for (i in 1:1000){
#   rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2]
# }
# proc.time() - ptm
