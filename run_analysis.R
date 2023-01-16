####
# Author: Anthony Checkas
# Version: 1.0
# Date: 2023.01.15
#
# Summary:
#   This script performs the following activities:
#     1) Merges the training and the test sets to create one data set.
#     2) Extracts only the measurements on the mean and standard deviation for each measurement.
#     3) Uses descriptive activity names to name the activities in the data set
#     4) Appropriately labels the data set with descriptive variable names.
#     5) From the data set in step 4, creates a second, independent tidy data set with the average
#         of each variable for each activity and each subject.
#
library(dplyr)
library(data.table)
library(tidyr)

#' Extract the mean and stddev for each measurement for the data set provided
#'
#' This function takes a data frame and returns a dataframe containing the mean and stddev for each numeric variable
#'
extractMeasurements <- function(fullTable) {
  # I've chosen to collect anything with mean or std here because the guidance wasn't clear
  # if measurements like meanFreq() should be included in the definition of means.
  #
  # Include activity and subject in our regex because we know they don't match anything other
  # than those two columns. If we were concerned with picking up extraneous fields, we could drop
  # them from the regular expression and then just add them back in later with
  # c("subject","activity",mandscols)
  mandscols <- grep("mean|std|activity|subject",colnames(fullTable))
  # Select all of the cols we decided on and return the table back
  fullTable %>% select(all_of(mandscols))
}

#' Summarize dataset
#'
#' Takes a data set and returns an independent summary data set with the mean of each variable for each activity and
#' each subject
#'
summarizeSet <- function(filteredSet) {

  summarySet <- filteredSet %>% group_by(subject,activity) %>% summarize_all(list(mean=mean))
  return(summarySet)
}

exportSet <- function(setToWrite) {
  if (!file.exists("./output")){
    dir.create("./output")
  }
  write.table(setToWrite,file="./output/acHARSummary.txt",row.names = FALSE)
}

# Read in the three data files for the training set
trvals <- fread("./UCI HAR Dataset/train/X_train.txt")
tract <- fread("./UCI HAR Dataset/train/y_train.txt")
trsub <- fread("./UCI HAR Dataset/train/subject_train.txt")
# Do the same for the test set
tevals <- fread("./UCI HAR Dataset/test/X_test.txt")
teact <- fread("./UCI HAR Dataset/test/y_test.txt")
tesub <- fread("./UCI HAR Dataset/test/subject_test.txt")
# Finally, let's get the table measurements and the activity labels
headers <- read.table("./UCI HAR Dataset/features.txt",row.names=1)
# We elect not to just use the row number of the df here because it gives us a table with two vectors
# that can be used when doing the replacement statement later without any further permutations
acts <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Bind the subject and activity columns to the training data
trvals <- bind_cols(tract,trvals)
trvals <- bind_cols(trsub,trvals)

# Bind the subject and activity columns to the test data as well
tevals <- bind_cols(teact,tevals)
tevals <- bind_cols(tesub,tevals)

# Create the headers for the each of the tables now to facilitate a smooth merge
colnames(trvals) <- c("subject","activity",headers$V2)
colnames(tevals) <- c("subject","activity",headers$V2)

# Merge the training and test data together
fullvals <- bind_rows(trvals,tevals)

# Change the values of the activity rows to be the actual activities.
fullvals$activity <- acts$V2[match(fullvals$activity,acts$V1)]

# At this point, we have a 10,299 x 563 dataset that's well labeled, comprised of both
# test and training data, and has appropriate data in the all the fields except the subject
# which I cannot normalize with the available data (with good reason)
#
# Next step is to extract only the meaasurements on mean and stddev for each measurement
tableOne <- extractMeasurements(fullvals)

# Now, we'll create a separate dataset with the average of each variable for each
# activity and each subject
tableTwo <- summarizeSet(tableOne)

# At last, but not least, we'll have this write out tableTwo as a file in an output directory.
exportSet(tableTwo)