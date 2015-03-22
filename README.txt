The run_analysis.R file contains a single function, run_analysis(). The run_analysis function analyzes a test data set and a training data set from 
a UCI study called "Human Activity Recognition Using Smartphones." The output is a list of variable means, as required by the Coursera.org course project assignment from the class "Getting and Cleaning Data."

First, run_analysis loads each data set into its respective table, testData and trainData.

Next, the columns for mean and standard deviation are identified and stored in the element meanStdData.

The meanStdData element is used to extract only these columns from each data set.

The two data sets are then merged into a single element, mergedSet.

The labels for the columns are read from the file "features.txt" and stored in the element labels.

The labels element is then applied to the mergedSet as a set of names.

A new item called FinalOutput is created by calling sapply to find the mean of each variable in mergedSet.

FinalOutput is then exported to a text file FinalOutput.txt using the write.table function.