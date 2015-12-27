runAnalysis <- function(){

        # Merges the training and the test sets to create one data set.
        
        
        
        featureNames <- read.delim("../UCI HAR Dataset/features.txt", header = FALSE,sep = " ",colClasses = c("NULL",NA))
        labels <- matrix(unlist(featureNames), ncol = 1)
        validLabels <- make.names(labels, unique = TRUE, allow_ = TRUE)
        
        # read in the test data
        testData <- read.delim("../UCI HAR Dataset/test/X_test.txt")
        testActivityData <- read.delim("../UCI HAR Dataset/test/y_test.txt")
        testSubjectData <- read.delim("../UCI HAR Dataset/test/subject_test.txt")
         
        # prepend the activity and subject data columns to the test data
        
        
        trainData <- read.delim("../UCI HAR Dataset/train/X_train.txt")
        trainActivityData <- read.delim("../UCI HAR Dataset/train/y_train.txt")
        trainSubjectData <- read.delim("../UCI HAR Dataset/train/subject_train.txt")
        
        
        print(c("class valid labels ", class(labels)))
        print(c("nrow valid labels ", nrow(labels)))
        print(str(labels))
       # validLabels
        # Extracts only the measurements on the mean and standard deviation for each measurement. 
        colCount <- 0
        for ( i in 1:nrow ( labels)){
                if( regexpr("Mean", labels[i]) > 0 ){
                        print(labels[i])
                        colCount <- colCount + 1
                }
                else if( regexpr("mean", labels[i]) > 0 ){
                        print(labels[i])
                        colCount <- colCount + 1
                }
                else if(  regexpr("Std", labels[i]) > 0){
                        print(labels[i])
                        colCount <- colCount + 1
                }
                else if(  regexpr("std", labels[i]) > 0){
                        print(labels[i])
                        colCount <- colCount + 1
                }
        }
        print(c("number of columns = ", colCount))   
        # Uses descriptive activity names to name the activities in the data set
        # Appropriately labels the data set with descriptive variable names. 
        
        # From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
}