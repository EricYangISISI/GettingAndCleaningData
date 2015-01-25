##Step 1: Get Data set

#read features.txt
features <- read.table("UCI HAR Dataset//features.txt")
names(features) <- c("num","name")

#read activity_labels.txt
activity <- read.table("UCI HAR Dataset//activity_labels.txt")
names(activity) <- c("code","name")

#read test data
testData.x <- read.table("UCI HAR Dataset//test//X_test.txt")
names(testData.x) <- features$name
testData.y <- read.table("UCI HAR Dataset//test//y_test.txt")
names(testData.y) <- "activity"
testData.st <- read.table("UCI HAR Dataset//test//subject_test.txt")
names(testData.st) <- "subjectId"

#read train data
trainData.x<-read.table("UCI HAR Dataset//train//X_train.txt")
names(trainData.x) <- features$name
trainData.y <- read.table("UCI HAR Dataset//train//y_train.txt")
names(trainData.y) <- "activity"
trainData.st <- read.table("UCI HAR Dataset//train//subject_train.txt")
names(trainData.st) <- "subjectId"


#merge test data
testData.m <- cbind(testData.x, testData.y, testData.st)
#merge train data
trainData.m <- cbind(trainData.x, trainData.y, trainData.st)
#merge test and train data
dataSet <- rbind(testData.m, trainData.m)

##Step 2
#Get features(mean, std)
featuresSubData <- c(grep("mean[(]|std[(]", features[,2]), ncol(dataSet)-1, ncol(dataSet))

dataSet <- dataSet[, featuresSubData]

##Step 3
#Uses descriptive activity names to name the activities in the data set
dataSet$activity <- as.character(factor(dataSet$activity, labels=activity$name))

##Step 4
#Get new renamed table
colNames <- names(dataSet)
colNames <-gsub("Acc", " Accelerometer", colNames)
colNames <-gsub("Gyro", " Gyroscope", colNames)
colNames <-gsub("Mag", " Magnitude", colNames)
colNames <-gsub("Jerk", " Jerk", colNames)
colNames <-gsub("^t", "Time", colNames)
colNames <-gsub("^f", "Frequency", colNames)
colNames <-gsub("mean[(][)]", "Mean", colNames)
colNames <-gsub("std[(][)]", "StandardDeviation", colNames)
colNames <-gsub("activity", "Activity", colNames)
colNames <-gsub("subjectId", "Subject.Id", colNames)
names(dataSet) <- make.names(colNames)

write.table(dataSet, "cleanData.txt")

##Last Step
#Get a second, independent tidy data 
independentTidyDataSet <- dataSet[,-c(ncol(dataSet)-1, ncol(dataSet))]

independentTidyDataSet <- aggregate(independentTidyDataSet, by = list(dataSet$Activity, dataSet$Subject.Id), mean)

write.table(independentTidyDataSet, "independent_TidyData.txt")

