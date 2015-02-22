# Codebook for the UCI HAR dataset


## Itroduction

This codebook is a particular extension of the codebook for the [`UCI HAR Dataset`][id], see more in "./UCI HAR Dataset/features_info.txt". The famiarity with the `"features_info.txt"` is required.

[id]:https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Tidy data output 

The output produced by the main script[run_analysis.R][id1] is the "Clean_data_averages.txt". The tidy data there are stored in the W I D E format.

[id1]:https://github.com/KvitnucaZahradka/Cleaning_data_assignment/blob/master/run_analysis.R  

## Tidy data output description
NOTE: In what follows, the column numbering is from left to right in the "Clean_data_averages.txt". 

### Column nr.1
* Name : "origin"
* Values : "test","train"
* Explanation : The values indicate into which group the data belong. Note, in the original [`data set`][id] there were two main groups of measurements "test" and "train".

### Column nr.2
* Name : "subject"
* Values : "1:30" 
* Explanation : Values label the "subjects". For more information on "subject" read : `"features_info.txt"`.  

### Column nr.3 
* Name : "activity"
* Values : "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"

### Columns nr.4, nr.5, nr.6 
* Names : "tBodyAcc.mean...X", "tBodyAcc.mean...Y","tBodyAcc.mean...Z"
* Values : Mean values of various acceleration

### Columns nr.7, nr.8, nr.9
* Names : "tGravityAcc.mean...X", "tGravityAcc.mean...Y", "tGravityAcc.mean...Z"
* Values : Mean values of gravity acceleration

### Columns nr.10, nr.11, nr.12
* Names : "tBodyAccJerk.mean...X", "tBodyAccJerk.mean...Y", "tBodyAccJerk.mean...Z"
* Values : Mean values of jerk

### Columns nr.13, nr.14, nr.15
* Names : "tBodyGyro.mean...X", "tBodyGyro.mean...Y", "tBodyGyro.mean...Z"
* Values : Mean values of gyration

### Columns nr.13, nr.14, nr.15 
* Names : "tBodyGyroJerk.mean...X", "tBodyGyroJerk.mean...Y", "tBodyGyroJerk.mean...Z"
* Values : Mean values of gyration jerk

### Columns nr.16, nr.17, nr.18, nr.19, nr. 20 
* Names : "tBodyAccMag.mean..", "tGravityAccMag.mean..", "tBodyAccJerkMag.mean..", "tBodyGyroMag.mean..", "tBodyGyroJerkMag.mean.."
* Values : Mean magnitude values of acceleration, gravity acceleration, jerk acceleration, gyration, jerk gyration

### Columns nr.21, nr.22, nr.23
* Names : "fBodyAcc.mean...X", "fBodyAcc.mean...Y", "fBodyAcc.mean...Z"
* Values : Frequency of mean acceleration 

### Columns nr.24, nr.25, nr.26
* Names : "fBodyAcc.meanFreq...X", "fBodyAcc.meanFreq...Y", "fBodyAcc.meanFreq...Z"
* Values : Frequency of mean acceleration mean frequency

### Columns nr.27, nr.28, nr.29
* Names : "fBodyAccJerk.mean...X", "fBodyAccJerk.mean...Y", "fBodyAccJerk.mean...Z"
* Values : Frequency of mean acceleration jerk

### Columns nr.30, nr.31, nr.32
* Names : "fBodyAccJerk.meanFreq...X", "fBodyAccJerk.meanFreq...Y", "fBodyAccJerk.meanFreq...Z"
* Values : Frequency of mean acceleration jerk mean frequency

### Columns nr.33, nr.34, nr.35
* Names : "fBodyGyro.mean...X", "fBodyGyro.mean...Y", "fBodyGyro.mean...Z"
* Values : Frequency of mean gyration

### Columns nr.36, nr.37, nr.38
* Names : "fBodyGyro.meanFreq...X", "fBodyGyro.meanFreq...Y", "fBodyGyro.meanFreq...Z"
* Values : Frequency of mean gyration mean frequency

### Columns nr.39, nr.40, nr.41, nr.42, nr. 43, nr. 44, nr.45, nr. 46
* Names : "fBodyAccMag.mean..", "fBodyAccMag.meanFreq..", "fBodyAccJerkMag.mean..", "fBodyAccJerkMag.meanFreq..", "fBodyGyroMag.mean..", "fBodyGyroMag.meanFreq..", "fBodyGyroJerkMag.mean..", "fBodyGyroJerkMag.meanFreq..",
* Values : Frequency of mean acceleration magnitude, frequency of mean acceleration magnitude mean frequency, frequency of mean gyration magnitude, frequency of mean gyration magnitude mean frequency, frequency of mean gyration jerk magnitude, frequency of mean gyration magnitude mean frequency

### Columns nr.47, nr.48, nr.49 
* Names : "tBodyAcc.std...X", "tBodyAcc.std...Y","tBodyAcc.std...Z"
* Values : Std. values of various acceleration

### Columns nr.50, nr.51, nr.52
* Names : "tGravityAcc.std...X", "tGravityAcc.std...Y", "tGravityAcc.std...Z"
* Values : Std values of gravity acceleration

### Columns nr.53, nr.54, nr.55
* Names : "tBodyAccJerk.std...X", "tBodyAccJerk.std...Y", "tBodyAccJerk.std...Z"
* Values : Std values of jerk acceleration

### Columns nr.56, nr.57, nr.58
* Names : "tBodyGyro.std...X", "tBodyGyro.std...Y", "tBodyGyro.std...Z"
* Values : Std values of gyration

### Columns nr.59, nr.60, nr.61 
* Names : "tBodyGyroJerk.std...X", "tBodyGyroJerk.std...Y", "tBodyGyroJerk.std...Z"
* Values : Std values of gyration jerk

### Columns nr.62, nr.63, nr.64, nr.65, nr.66 
* Names : "tBodyAccMag.std..", "tGravityAccMag.std..", "tBodyAccJerkMag.std..", "tBodyGyroMag.std..", "tBodyGyroJerkMag.std.."
* Values : Std magnitude values of acceleration, gravity acceleration, jerk acceleration, gyration, jerk gyration

### Columns nr.67, nr.68, nr.69
* Names : "fBodyAcc.std...X", "fBodyAcc.std...Y", "fBodyAcc.std...Z"
* Values : Frequency of std acceleration 

### Columns nr.70, nr.71, nr.72
* Names : "fBodyAccJerk.std...X", "fBodyAccJerk.std...Y", "fBodyAccJerk.std...Z"
* Values : Frequency of std acceleration jerk

### Columns nr.73, nr.74, nr.75
* Names : "fBodyGyro.std...X", "fBodyGyro.std...Y", "fBodyGyro.std...Z"
* Values : Frequency of std gyration

### Columns nr.76, nr.77, nr.78, nr.79
* Names : "fBodyAccMag.std..", "fBodyAccJerkMag.std..", "fBodyGyroMag.std..", "fBodyGyroJerkMag.std.."
* Names : Frequency of std acceleration magnitude, frequency of std jerk acceleration magnitude, frequency of std gyration magnitude, frequency of std gyration jerk magnitude, 