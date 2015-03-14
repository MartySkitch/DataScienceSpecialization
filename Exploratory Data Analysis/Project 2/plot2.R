
# setwd("D:/Skitch/Code/R/DataScienceSpecialization/DataScienceSpecialization/Exploratory Data Analysis/Project 2")

plot2 <- function () {
  
  library(dplyr)
  
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
  
  
  
  Total_PM25_By_Year <- filter(NEI, fips == "24510") %>%
                      select(year, Emissions) %>%                  
                      group_by(year)  %>% 
                      summarise(tot_Emmision = sum(Emissions))
  # Plot for the scrren
  plot_emmision(Total_PM25_By_Year)
  
  # Plot for file
  png(filename = "./plot2.png")
  plot_emmision(Total_PM25_By_Year)
  dev.off()
}  

# Function to plot data (this should be private)    
plot_emmision <- function (Total_PM25_By_Year) {
  par(mfrow = c(1,1))
  with(Total_PM25_By_Year, plot(year, tot_Emmision, pch = 2,
                            xlab = "Year",
                            ylab = "Total Emmision (tons)",
                            main = "Total PM2.5 - Baltimore City"))
  model <- lm(tot_Emmision ~ year, Total_PM25_By_Year)
  abline(model, lwd = 2)
}

