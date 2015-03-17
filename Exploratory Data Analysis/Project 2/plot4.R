
# setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/Exploratory Data Analysis/Project 2")

plot4 <- function () {
  
  library(dplyr)
  library(ggplot2)
  
  dir.create("./Data", showWarnings = FALSE)
  
  fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
  zipFile <- "./Data/NEI_data.zip"
  if (!file.exists(zipFile)) {
    download.file(fileUrl, destfile = zipFile, mode="wb")  # download in binary mode
  }
  
  options(warn = -1) # Turn off warning if file is not overwritten
  fname = unzip(zipFile, list=TRUE)$Name # Get the names of the zip files
  unzip(zipFile, files = fname, overwrite = FALSE, exdir = "./Data") # Extract only missing files
  options(warn = 0) # Want to see any other errors
  
  ## This first line will likely take a few seconds. Be patient!
  NEI <- readRDS(paste("./Data", fname[2], sep = "/"))
  SCC <- readRDS(paste("./Data", fname[1], sep = "/"))
  
  coal_related <- filter(SCC, grepl("coal", EI.Sector, ignore.case = TRUE) )
  coal_related_SCC <- sapply(coal_related$SCC, as.character)

  
  Total_PM25_By_Year <- filter(NEI, SCC  %in% coal_related_SCC) %>%
                      select(year, Emissions) %>%  
                      mutate(total_pollution = Emissions / 10^3) %>%
                      group_by(year)  %>% 
                      summarise(tot_Emision = sum(total_pollution))
  # Plot for the scrren
#   qp <- qplot(year, tot_Emision, data = Total_PM25_By_Year, facets = .~type,
#               geom = c("point", "smooth"), method = "lm", formula = y~x, se = FALSE)
#   qp
#   
  g <- ggplot(Total_PM25_By_Year, aes(year, tot_Emision) ) + geom_point() +
              geom_smooth(method = "lm", se = FALSE) +
              labs(title = "Total PM2.5 from Coal - US") +
              labs(x = "Year", y = "Total Emision (thousands of tons)") +
              theme(axis.text.x = element_text(angle = 45, hjust = 1))
  print(g)
  
  # Plot for file
  png(filename = "./plot4.png", width = 480, height = 480)
  print(g)
  dev.off()
}  

