run_analysis <- function(){
      ## Load datasets into tables
      
      testData <- read.table("test/X_test.txt")
      trainData <- read.table("train/X_train.txt")
      
      ## Specify and extract only the mean and standard deviation columns  
      
      meanStdData <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201, 202, 214, 215, 227, 228, 240, 241, 253, 254)
      
      testData <- testData[, meanStdData] 
      trainData <- trainData[, meanStdData] 
      
      ## Combine testData and trainData in mergedSet
      
      mergedSet <- merge(testData, trainData, all=TRUE)
      
      ## Get label data using features.txt
      
      labels <- read.table("features.txt")
      labels <- labels[meanStdData, 2]
      
      ## Apply labels to mergedSet
      
      names(mergedSet) <- labels
      
      ## Take the mean of each variable and store in FinalOutput
      
      FinalOutput <- sapply(mergedSet, mean)
      
      ## Export FinalOutput to text file
      
      write.table(FinalOutput, "FinalOutput.txt", row.names=FALSE) 
}