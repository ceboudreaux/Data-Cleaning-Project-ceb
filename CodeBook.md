# Input
###### UCI HAR Dataset/test/X_test.txt
###### UCI HAR Dataset/train/Xtrain.txt
###### UCI HAR Dataset/features.txt

# Output
###### FinalOutput.txt

# Transformations
* Created dataframe testData by read.table("test/X_test.txt")
* Created dataframe trainData by read.table("train/X_train.txt")
* Created meanStdData by specifying column numbers containing mean or standard deviation data
* Extracted mean and standard deviation columns from each dataframe
* Merged extracted data into mergedSet
* Retrieved label names from features.txt
* Applied labels to mergedSet
* Stored mean of eat variable in FinalOutput using sapply(mergedSet, mean)
* Exported FinalOutput to text file using write.table(FinalOutput, "FinalOutput.txt", row.names=FALSE)