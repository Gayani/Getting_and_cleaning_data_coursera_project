# Code Book

This code book details the data in "tidy.txt" file
Each row in tidy.txt contains <identifiers(subject,activity),mean(measurements for corresponding subject & activity)>.

## Identifiers
=========================================
*subject - The ID of the test subject 
	The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
	The value of ID is from 1 to 30.
	
*activity - The type of activity performed when the corresponding measurements were taken
	* 1: WALKING:- subject was walking during the test
	* 2: WALKING_UPSTAIRS:- subject was walking up a staircase during the test
	* 3: WALKING_DOWNSTAIRS:- subject was walking down a staircase during the test
	* 4: SITTING:- subject was sitting during the test
	* 5: STANDING:- subject was standing during the test
	* 6: LAYING:- subject was laying down during the test
	
## Measurements
=========================================
These measurements are related to time and frequency domain mean and standard deviation of followings

*Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
*Triaxial Angular velocity from the gyroscope.

	*tBodyAccMeanX
	*tBodyAccMeanY
	*tBodyAccMeanZ
	*tBodyAccStdX
	*tBodyAccStdY
	*tBodyAccStdZ
	*tGravityAccMeanX
	*tGravityAccMeanY
	*tGravityAccMeanZ
	*tGravityAccStdX
	*tGravityAccStdY
	*tGravityAccStdZ
	*tBodyAccJerkMeanX
	*tBodyAccJerkMeanY
	*tBodyAccJerkMeanZ
	*tBodyAccJerkStdX
	*tBodyAccJerkStdY
	*tBodyAccJerkStdZ
	*tBodyGyroMeanX
	*tBodyGyroMeanY
	*tBodyGyroMeanZ
	*tBodyGyroStdX
	*tBodyGyroStdY
	*tBodyGyroStdZ
	*tBodyGyroJerkMeanX
	*tBodyGyroJerkMeanY
	*tBodyGyroJerkMeanZ
	*tBodyGyroJerkStdX
	*tBodyGyroJerkStdY
	*tBodyGyroJerkStdZ
	*tBodyAccMagMean
	*tBodyAccMagStd
	*tGravityAccMagMean
	*tGravityAccMagStd
	*tBodyAccJerkMagMean
	*tBodyAccJerkMagStd
	*tBodyGyroMagMean
	*tBodyGyroMagStd
	*tBodyGyroJerkMagMean
	*tBodyGyroJerkMagStd
	*fBodyAccMeanX
	*fBodyAccMeanY
	*fBodyAccMeanZ
	*fBodyAccStdX
	*fBodyAccStdY
	*fBodyAccStdZ
	*fBodyAccMeanFreqX
	*fBodyAccMeanFreqY
	*fBodyAccMeanFreqZ
	*fBodyAccJerkMeanX
	*fBodyAccJerkMeanY
	*fBodyAccJerkMeanZ
	*fBodyAccJerkStdX
	*fBodyAccJerkStdY
	*fBodyAccJerkStdZ
	*fBodyAccJerkMeanFreqX
	*fBodyAccJerkMeanFreqY
	*fBodyAccJerkMeanFreqZ
	*fBodyGyroMeanX
	*fBodyGyroMeanY
	*fBodyGyroMeanZ
	*fBodyGyroStdX
	*fBodyGyroStdY
	*fBodyGyroStdZ
	*fBodyGyroMeanFreqX
	*fBodyGyroMeanFreqY
	*fBodyGyroMeanFreqZ
	*fBodyAccMagMean
	*fBodyAccMagStd
	*fBodyAccMagMeanFreq
	*fBodyBodyAccJerkMagMean
	*fBodyBodyAccJerkMagStd
	*fBodyBodyAccJerkMagMeanFreq
	*fBodyBodyGyroMagMean
	*fBodyBodyGyroMagStd
	*fBodyBodyGyroMagMeanFreq
	*fBodyBodyGyroJerkMagMean
	*fBodyBodyGyroJerkMagStd
	*fBodyBodyGyroJerkMagMeanFreq

Measurement values are normalized and bounded within [-1,1].