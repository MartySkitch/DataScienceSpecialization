Read Me for the Getting and Cleaning Course Project
---------------------------------------------------

### Notes from the assigment

> One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
    
    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
    
> Here are the data for the project: 
    
    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
    
> You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Setup required
1. Download he data in the zip file
2. Extract it to the same folder as the code 
  + The "UCI HAR Dataset" folder should be in the same folder as the code

### Process to get the Tidy Data
1. The following libraries were used 
    + dplyr
    + data.table
2. The following are common to both the Test and Training
    + Read the Activity Label file
    + Read the column names from the Feature file
    + Create an array with the new column names for the final tidy data
        + The columns were hand picked to control which fields were useful
3. Read the Training Data
    + Read the Training Labels - This is the activity each subject performed
    + Read the Subjects - This is the subject that performed the activity
    + Read the data - This is all the data for each subject as they performed each activity
    + Rename the columns using the names from the Feature file
    + Keep only columns that are useful for the Tidy Data set
    + Combine the subject, activity with the data
    + Rename the subject and activity columns
    + Merge the Activity column with the activity labels
    + Select the desired columns and arrange the data by subject
    + Finally rename the columns for the last time
4. Read the Test Data
    + Read the Training Labels - This is the activity each subject performed
    + Read the Subjects - This is the subject that performed the activity
    + Read the data - This is all the data for each subject as they performed each activity
    + Rename the columns using the names from the Feature file
    + Keep only columns that are useful for the Tidy Data set
    + Combine the subject, activity with the data
    + Rename the subject and activity columns
    + Merge the Activity column with the activity labels
    + Select the desired columns and arrange the data by subject
    + Finally rename the columns for the last time
5. Combine the Training and Test data into one data.frame
6. Group the data by Subject and Activity and take the mean of all variables
    

### How to read the data files

  **Tidy data**

      data <- read.table("./tidyData.txt", header = TRUE) 
      View(data)
      
  **Summary of the Tidy data**

      data.mean <- read.table("./tidyDataMean.txt", header = TRUE) 
      View(data.mean)'''