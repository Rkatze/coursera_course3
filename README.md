# coursera_course3
project assignment for course 3
(The original data is available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The "run_analysis.R" file contains five parts. Each part answers one question from the assignment.

At first, I read all the data and named them as required. 
The first part merges the training and the test data sets with cbind() and rbind().
Two data sets ("test" and "train") were merged into a large one called "merged". 

The second part extract measurements on the mean and standard deviation for each measurement with grepl().
The extracted data set was named "extracted".

The third part uses descriptive activity names to name the activities in the data set.
The fourth part labels the data set with descriptive variable names with gsub(). Then, t was replaced by time, f was replaced by frequency.

Finally, I created a second, independent tidy data set with the average of each variable for each activity and each subject. 
I used aggregate() to group variables by "subjectID" and "activityID". 
The new data set was named "tidydf".
