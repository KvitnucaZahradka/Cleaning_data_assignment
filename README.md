# Cleaning data assignment

## Itroduction

The main code in [this][id] repository is called ["run_analysis.R"][id1]. 

Output of ["run_analysis.R"][id1] is called "Clean_data_averages.txt" and contains clean and averaged data. 

[id]: https://github.com/KvitnucaZahradka/Cleaning_data_assignment  
[id1]:https://github.com/KvitnucaZahradka/Cleaning_data_assignment/blob/master/run_analysis.R 

## Necessary settings

To run a script one should have: 

1. installed "dplyr" and "tidyr" packages into R
2. download the [following data][id3] into the working directory
3. submit script to a R console (or R studio console) by `source("./run_analysis.R")`
4. the file "Clean_data_averages.txt" is produced by calling `analysis()` function in R console (or R studio console)    

[id3]:https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Description of the [script][id]
###Part1

1. The "test" and "train" data where loaded from original [data set][id3].  Files loaded:
"X_train.txt","X_test.txt","y_train.txt","y_test.txt",
"subject_train.txt","subject_test.txt","features.txt",
"activity_labels.txt"

2. Joined data were produced, as the join of the loaded "train" and "test" data. Joined data: 
"X_join", "y_join","subject_join".
The rest of the loaded data stored in:
"features","act_labels" (loaded in Part3)
3. Add a column "origin" to joined data. Values of "origin" are "train" for train set and "test" for test set. 
   
###Part2

1. Default column names in "X_join" variable changed to names comming from "features".
2. Tidy version of those new "X_join" names produced.
3. The "X_join" subtable "sX_join". "sX_join" contains only columns with walues of "mean", "std"(standard deviation) and "origin". 
4. The column "y_join" attached to "sX_join". 
5. The default name for the new column in "sX_join" changed to "activity".
6. The column "subject_join" attached to "sX_join".
7. The default name for the new column in "sX_join" changed to "subject".  
8. "name_without" created. Contains the same as "sX_join"  except columns "subject", "activity","origin".  

###Part3
 
1. The "melt" function used on "sX_join" to prepare the data into the right form to apply "dcast". By "melt" the "msX_join" is produced. 
2. The "dcast" function used on "msX_join" together with "mean" function. The "almost" data set produced as result.
3. The "act_labels" loaded.
4. The "almost" "activity" column values are changed according to "act_labes". 
5. The "na.test()" function used to test NA values in the  "almost".
6. The "almost" passed to "final"
7. The "final" written as the "Clean_data_averages.txt".
