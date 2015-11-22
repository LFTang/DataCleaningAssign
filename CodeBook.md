Original Database
=============================================

The Human Activity Recognition database is based on the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.


A full description of the original data is available at: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The original data from the project can be found in:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Data Processing (run_analysis.R)
=========================================

1. Combined measurements from both the training and testing sets into one dataset. 
2. Extracted only the measurements on the mean and standard deviation for each measurement.
3. Included subject number and their represented activity in the dataset.
4. Calculated and an average of each parameters by each participant and activity 


Data File
=========================================

- 'summary.txt': Lists subject number, activity type, and averages of selected parameters.


Variable List
======================================

Column Number | Variable Name
--------------|-------------------
1|Subject
2|Activity
3|tBodyAcc-mean()-X
4|tBodyAcc-mean()-Y
5|tBodyAcc-mean()-Z
6|tBodyAcc-std()-X
7|tBodyAcc-std()-Y
8|tBodyAcc-std()-Z
9|tGravityAcc-mean()-X
10|tGravityAcc-mean()-Y
11|tGravityAcc-mean()-Z
12|tGravityAcc-std()-X
13|tGravityAcc-std()-Y
14|tGravityAcc-std()-Z
15|tBodyAccJerk-mean()-X
16|tBodyAccJerk-mean()-Y
17|tBodyAccJerk-mean()-Z
18|tBodyAccJerk-std()-X
19|tBodyAccJerk-std()-Y
20|tBodyAccJerk-std()-Z
21|tBodyGyro-mean()-X
22|tBodyGyro-mean()-Y
23|tBodyGyro-mean()-Z
24|tBodyGyro-std()-X
25|tBodyGyro-std()-Y
26|tBodyGyro-std()-Z
27|tBodyGyroJerk-mean()-X
28|tBodyGyroJerk-mean()-Y
29|tBodyGyroJerk-mean()-Z
30|tBodyGyroJerk-std()-X
31|tBodyGyroJerk-std()-Y
32|tBodyGyroJerk-std()-Z
33|tBodyAccMag-mean()
34|tBodyAccMag-std()
35|tGravityAccMag-mean()
36|tGravityAccMag-std()
37|tBodyAccJerkMag-mean()
38|tBodyAccJerkMag-std()
39|tBodyGyroMag-mean()
40|tBodyGyroMag-std()
41|tBodyGyroJerkMag-mean()
42|tBodyGyroJerkMag-std()
43|fBodyAcc-mean()-X
44|fBodyAcc-mean()-Y
45|fBodyAcc-mean()-Z
46|fBodyAcc-std()-X
47|fBodyAcc-std()-Y
48|fBodyAcc-std()-Z
49|fBodyAccJerk-mean()-X
50|fBodyAccJerk-mean()-Y
51|fBodyAccJerk-mean()-Z
52|fBodyAccJerk-std()-X
53|fBodyAccJerk-std()-Y
54|fBodyAccJerk-std()-Z
55|fBodyGyro-mean()-X
56|fBodyGyro-mean()-Y
57|fBodyGyro-mean()-Z
58|fBodyGyro-std()-X
59|fBodyGyro-std()-Y
60|fBodyGyro-std()-Z
61|fBodyAccMag-mean()
62|fBodyAccMag-std()
63|fBodyBodyAccJerkMag-mean()
64|fBodyBodyAccJerkMag-std()
65|fBodyBodyGyroMag-mean()
66|fBodyBodyGyroMag-std()
67|fBodyBodyGyroJerkMag-mean()
68|fBodyBodyGyroJerkMag-std()


Notes: 
======
- The units for acceleration signals are standard gravity units of "g".
- Features are normalized and bounded within [-1,1].



License:
========
Use of the original dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

