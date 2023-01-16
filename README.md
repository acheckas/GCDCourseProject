## Getting and Cleaning Data Course Project
This repo contains the course project for Week 4.

Included in the repo are the following assets:
* This ReadMe markdown document you're currently viewing
* A [run_analysis.R](run_analysis.R) script
* A [Codebook markdown document](CodeBook.md)
* In the output directory, there is a tidy data text file representing the last run of the application

### About the run_analysis.R script
This script is responsible for generating the output data provided that the UCI HAR Dataset is available in 
the working directory, in a folder called "UCI HAR Dataset", when run_analysis.R is run.

The script performs the following actions:
* Load all the relevant data for both the training and test data sets
* Add the activity and subject columns to each set of data
* Set the header names from the independent features vector, adding labels for the two extra columns that were introduced.
* Combine the test and training data sets
* Filter out the columns that don't include standard deviations or means
* Create a summary set from the filtered data that is comprised of the means of the remaining columns and present it in a tidy dataset.
* Write the data out to a file in the output directory.

#### Requirements
This script requires three non-base libraries to be installed in order to run:
* dplyr
* tidyr
* data.table

### Output

The output that's generated is a summary of the mean of the original UCI HAR Dataset's collected means 
and standard deviations for each measurement provided, grouped by subject and by activity.The data is a tidy
summarization of the original data. In that it is clearly labeled, has one measurement in each column,
and has one observation of that set of variables in each row which ,in this 
case, is a mean for each observation for each activity for each subject, and there is only one table and thus
one file. The top row of the output file includes all of the variable names for the data set which are as 
human read-able as the sensor data allows.

#### Loading the output file
When the script is run, it will generate a file named "acHARSummary.txt" in the output subdirectory of
your current working directory. To load the file into your R interpreter, you can run:

`outputTable <- read.table("./output/acHARSummary.txt",header=TRUE)`

The expected data frame is 180 x 81 with a subject, activity and 178 assorted sensor means.

### Codebook.md
The [Codebook](CodeBook.md) contains all the modifications and updates to the original codebook along with the data to 
indicate all the variables and summaries calculated, along with units, and any other relevant information.

### Sample Dataset
The UCI HAR Dataset that was used to generate this code is also included in the top level of the repo for convenience 
of reviewers. 

The original dataset can be located at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
