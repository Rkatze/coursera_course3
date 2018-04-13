# coursera_course3
project assignment for course 3
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

Information about dataset 
Name of dataset: Human Activity Recognition Using Smartphones Dataset （Version 1.0）
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
