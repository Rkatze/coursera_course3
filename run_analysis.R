library(data.table)
setwd("/Users/silencemac/Desktop/coursera/course3pro/UCI HAR Dataset")

activityLable <- read.table("./activity_labels.txt", header = FALSE)
features <- read.table("./features.txt", header = FALSE)
#read_test
testSubject <- read.table("./test/subject_test.txt", header = FALSE)
testX <- read.table("./test/X_test.txt", header = FALSE)
testy <- read.table("./test/y_test.txt", header = FALSE)
#read_train
trainSubject <- read.table("./train/subject_train.txt", header = FALSE)
trainX <- read.table("./train/X_train.txt", header = FALSE)
trainy <- read.table("./train/y_train.txt", header = FALSE)

#add colnames_subject 
names(testSubject) <- "subjectID"
names(trainSubject) <- "subjectID"
#add colnames_feasure
names(testX) <- features$V2
names(trainX) <- features$V2
#add colnames_activity
names(testy) <- "activityID"
names(trainy) <- "activityID"

#1.Merges the training and the test sets to create one data set
#merge the training and the test sets (each file contains distinct columns)
test <- cbind(testSubject, testX, testy)
train <- cbind(trainSubject, trainX, trainy)
#combine them into one data.frame (~ question 1)
merged <- rbind(test, train)

#2.Extracts only the measurements on the mean and standard deviation for each measurement
extracted <- merged[, grepl("mean|std|subjectID|activityID", names(merged))]

#3.Uses descriptive activity names to name the activities in the data set
activityLable$V2 <- as.character(activityLable[,2])
extracted$activityID <- activityLable[extracted$activityID,2]

#4.Appropriately labels the data set with descriptive variable names.
#According to the features_info, t means time, f indicates frequency
names(extracted) <- gsub("^t", "time", names(extracted))
names(extracted) <- gsub("^f", "frequency", names(extracted))

#5.From the data set in step 4, creates a second, independent tidy data set with the 
#average of each variable for each activity and each subject.
tidydf <- aggregate(.~subjectID+activityID, extracted, mean)
tidydf <- tidydf[order(tidydf$subjectID, tidydf$activityID),]
write.table(tidydf, file = "tidydf.txt", row.names = FALSE)
