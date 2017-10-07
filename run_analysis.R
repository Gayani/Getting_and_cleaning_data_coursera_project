library(reshape2)

#download and unzip input data if it doesn't exist

fileName <- "dataset.zip"
if (!file.exists(fileName)){
	fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
	download.file(fileUrl,fileName,mode='wb')
}
if (!file.exists("UCI HAR Dataset")) { 
	unzip(fileName) 
}

#Read activity labels
activityLabels = read.table("UCI HAR Dataset/activity_labels.txt")

#Read features and extract features related to mean and standard deviation
features = read.table("UCI HAR Dataset/features.txt")
selectedFeatures <- grep(".*mean.*|.*std.*", features[,2])

#Substitute extracted feature names with more readable names
selectedFeatures.names <- features[selectedFeatures,2]
selectedFeatures.names = gsub('-mean', 'Mean', selectedFeatures.names)
selectedFeatures.names = gsub('-std', 'Std', selectedFeatures.names)
selectedFeatures.names <- gsub('[-()]', '', selectedFeatures.names)

#Load the training datasets
train <- read.table("UCI HAR Dataset/train/X_train.txt")[selectedFeatures]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

#Load the test dataset
test <- read.table("UCI HAR Dataset/test/X_test.txt")[selectedFeatures]
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

#Merge the training and the test sets with appropriate column names
combinedData <- rbind(train, test)
colnames(combinedData) <- c("subject", "activity", selectedFeatures.names)

#Transform activities and subjects into factors
combinedData$activity <- factor(combinedData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
combinedData$subject <- as.factor(combinedData$subject)

#Creates a data set with the average of each variable for each activity and each subject
combinedData.melted <- melt(combinedData, id = c("subject", "activity"))
combinedData.mean <- dcast(combinedData.melted, subject + activity ~ variable, mean)

#Write to the file "tidy.txt"
write.table(combinedData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
