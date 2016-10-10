## Code Book
Description of the variables, the data, and any transformations or work that is performed to clean up the data

### Data Source

Full description

* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data for the project
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

### Transformation Process Overview
* Download and unzip data of the for the project into the ``UCI HAR Dataset`` folder in the RStudio working directory
* Read the train and test data sets for x, y & subject and rbind them into their respective data frames 
* Load the features and activity labels into separate data frames
* Use grep on the features data set to filter out columns which contains mean and standard deveviations on x. Save the subset of x in a new data frame
* Name the single column in y as Activity and subject as Subject  
* Apply the activity names on y using factor
* Name the columns for the subset of x, removing the brackets using grep
* Create first data set by column binding subject, y and x
* Export the first data set to tidyData1.txt
* Create second data set by applying aggregate on the first data set and removing the unwanted columns
* Export the second data set to tidyData2.txt

### tidyData1.txt
Data subset used to derive tidyData2.txt (included for completeness)

| Variable | Description
-----------|-------------
| Subject | Subject
| Activity | Acitivities performed which includes: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 
| tBodyAcc-mean-X | Mean body acceleration time on X axis
| tBodyAcc-mean-Y | Mean body acceleration time on Y axis
| tBodyAcc-mean-Z | Mean body acceleration time on Z axis
| tBodyAcc-std-X | Standard deviation of body acceleration time on X axis
| tBodyAcc-std-Y | Standard deviation of body acceleration time on Y axis
| tBodyAcc-std-Z | Standard deviation of body acceleration time on Z axis
| tGravityAcc-mean-X | Mean gravity acceleration time on X axis
| tGravityAcc-mean-Y | Mean gravity acceleration time on Y axis
| tGravityAcc-mean-Z | Mean gravity acceleration time on Z axis
| tGravityAcc-std-X | Standard deviation of gravity acceleration time on X axis
| tGravityAcc-std-Y | Standard deviation of gravity acceleration time on Y axis
| tGravityAcc-std-Z | Standard deviation of gravity acceleration time on Z axis
| tBodyAccJerk-mean-X | Mean body acceleration jerk time on X axis
| tBodyAccJerk-mean-Y | Mean body acceleration jerk time on Y axis
| tBodyAccJerk-mean-Z | Mean body acceleration jerk time on Z axis
| tBodyAccJerk-std-X | Standard deviation of body acceleration jerk time on X axis
| tBodyAccJerk-std-Y | Standard deviation of body acceleration jerk time on Y axis
| tBodyAccJerk-std-Z | Standard deviation of body acceleration jerk time on Z axis
| tBodyGyro-mean-X | Mean body gyroscope on X time axis
| tBodyGyro-mean-Y | Mean body gyroscope on Y time axis
| tBodyGyro-mean-Z | Mean body gyroscope on Z time axis
| tBodyGyro-std-X | Standard deviation of body gyroscope time on X axis
| tBodyGyro-std-Y | Standard deviation of body gyroscope time on Y axis
| tBodyGyro-std-Z | Standard deviation of body gyroscope time on Z axis
| tBodyGyroJerk-mean-X | Mean body gyroscope jerk time on X axis
| tBodyGyroJerk-mean-Y | Mean body gyroscope jerk time on Y axis
| tBodyGyroJerk-mean-Z | Mean body gyroscope jerk time on Z axis
| tBodyGyroJerk-std-X | Standard deviation of body gyroscope jerk time on X axis
| tBodyGyroJerk-std-Y | Standard deviation of body gyroscope jerk time on Y axis
| tBodyGyroJerk-std-Z | Standard deviation of body gyroscope jerk time on Z axis
| tBodyAccMag-mean | Mean body acceleration magnitude based on signals calculated using the Euclidean norm
| tBodyAccMag-std | Standard deviation of body acceleration magnitude based on signals calculated using the Euclidean norm
| tGravityAccMag-mean | Mean gravity acceleration magnitude based on signals calculated using the Euclidean norm 
| tGravityAccMag-std | Standard deviation of gravity acceleration magnitude based on signals calculated using the Euclidean norm 
| tBodyAccJerkMag-mean | Mean body acceleration jerk magnitude based on signals calculated using the Euclidean norm
| tBodyAccJerkMag-std | Standard deviation of body acceleration jerk magnitude based on signals calculated using the Euclidean norm
| tBodyGyroMag-mean | Mean body gyroscope magnitude based on signals calculated using the Euclidean norm 
| tBodyGyroMag-std | Standard deviation of body gyroscope magnitude based on signals calculated using the Euclidean norm
| tBodyGyroJerkMag-mean | Mean body gyroscope jerk magnitude based on signals calculated using the Euclidean norm
| tBodyGyroJerkMag-std | Standard deviation of body gyroscope jerk magnitude based on signals calculated using the Euclidean norm
| fBodyAcc-mean-X | Mean body acceleration on X axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAcc-mean-Y | Mean body acceleration on Y axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAcc-mean-Z | Mean body acceleration on Z axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAcc-std-X | Standard deviation of body acceleration on X axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAcc-std-Y | Standard deviation of body acceleration on Y axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAcc-std-Z | Standard deviation of body acceleration on Z axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAccJerk-mean-X | Mean body acceleration jerk on X axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAccJerk-mean-Y | Mean body acceleration jerk on Y axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAccJerk-mean-Z | Mean body acceleration jerk on Z axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAccJerk-std-X | Standard deviation of body acceleration jerk on X axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAccJerk-std-Y | Standard deviation of body acceleration jerk on Y axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAccJerk-std-Z | Standard deviation of body acceleration jerk on Z axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyGyro-mean-X | Mean body gyroscope on X axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyGyro-mean-Y | Mean body gyroscope on Y axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyGyro-mean-Z | Mean body gyroscope on Z axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyGyro-std-X | Standard deviation of body gyroscope on X axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyGyro-std-Y | Standard deviation of body gyroscope on Y axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyGyro-std-Z | Standard deviation of body gyroscope on Z axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAccMag-mean | Mean body acceleration magnitude based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAccMag-std | Standard deviation of body acceleration magnitude based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyBodyAccJerkMag-mean | Mean body acceleration jerk magnitude based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyBodyAccJerkMag-std | Standard deviation of body acceleration jerk magnitude based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyBodyGyroMag-mean | Mean body gyroscope magnitude based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyBodyGyroMag-std | Standard deviation of body gyroscope magnitude based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyBodyGyroJerkMag-mean | Mean body gyroscope jerk magnitude based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyBodyGyroJerkMag-std | Standard deviation of body gyroscope jerk magnitude based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)


### tidyData2.txt
Final output result for course project based on data from tidyData1.txt aggregated by Activity and Subject.

| Variable | Description
-----------|-------------
| ActivityGrp | Acitivities performed which includes: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 
| SubjectGrp | Subject
| tBodyAcc-mean-X | Mean body acceleration time on X axis
| tBodyAcc-mean-Y | Mean body acceleration time on Y axis
| tBodyAcc-mean-Z | Mean body acceleration time on Z axis
| tBodyAcc-std-X | Standard deviation of body acceleration time on X axis
| tBodyAcc-std-Y | Standard deviation of body acceleration time on Y axis
| tBodyAcc-std-Z | Standard deviation of body acceleration time on Z axis
| tGravityAcc-mean-X | Mean gravity acceleration time on X axis
| tGravityAcc-mean-Y | Mean gravity acceleration time on Y axis
| tGravityAcc-mean-Z | Mean gravity acceleration time on Z axis
| tGravityAcc-std-X | Standard deviation of gravity acceleration time on X axis
| tGravityAcc-std-Y | Standard deviation of gravity acceleration time on Y axis
| tGravityAcc-std-Z | Standard deviation of gravity acceleration time on Z axis
| tBodyAccJerk-mean-X | Mean body acceleration jerk time on X axis
| tBodyAccJerk-mean-Y | Mean body acceleration jerk time on Y axis
| tBodyAccJerk-mean-Z | Mean body acceleration jerk time on Z axis
| tBodyAccJerk-std-X | Standard deviation of body acceleration jerk time on X axis
| tBodyAccJerk-std-Y | Standard deviation of body acceleration jerk time on Y axis
| tBodyAccJerk-std-Z | Standard deviation of body acceleration jerk time on Z axis
| tBodyGyro-mean-X | Mean body gyroscope on X time axis
| tBodyGyro-mean-Y | Mean body gyroscope on Y time axis
| tBodyGyro-mean-Z | Mean body gyroscope on Z time axis
| tBodyGyro-std-X | Standard deviation of body gyroscope time on X axis
| tBodyGyro-std-Y | Standard deviation of body gyroscope time on Y axis
| tBodyGyro-std-Z | Standard deviation of body gyroscope time on Z axis
| tBodyGyroJerk-mean-X | Mean body gyroscope jerk time on X axis
| tBodyGyroJerk-mean-Y | Mean body gyroscope jerk time on Y axis
| tBodyGyroJerk-mean-Z | Mean body gyroscope jerk time on Z axis
| tBodyGyroJerk-std-X | Standard deviation of body gyroscope jerk time on X axis
| tBodyGyroJerk-std-Y | Standard deviation of body gyroscope jerk time on Y axis
| tBodyGyroJerk-std-Z | Standard deviation of body gyroscope jerk time on Z axis
| tBodyAccMag-mean | Mean body acceleration magnitude based on signals calculated using the Euclidean norm
| tBodyAccMag-std | Standard deviation of body acceleration magnitude based on signals calculated using the Euclidean norm
| tGravityAccMag-mean | Mean gravity acceleration magnitude based on signals calculated using the Euclidean norm 
| tGravityAccMag-std | Standard deviation of gravity acceleration magnitude based on signals calculated using the Euclidean norm 
| tBodyAccJerkMag-mean | Mean body acceleration jerk magnitude based on signals calculated using the Euclidean norm
| tBodyAccJerkMag-std | Standard deviation of body acceleration jerk magnitude based on signals calculated using the Euclidean norm
| tBodyGyroMag-mean | Mean body gyroscope magnitude based on signals calculated using the Euclidean norm 
| tBodyGyroMag-std | Standard deviation of body gyroscope magnitude based on signals calculated using the Euclidean norm
| tBodyGyroJerkMag-mean | Mean body gyroscope jerk magnitude based on signals calculated using the Euclidean norm
| tBodyGyroJerkMag-std | Standard deviation of body gyroscope jerk magnitude based on signals calculated using the Euclidean norm
| fBodyAcc-mean-X | Mean body acceleration on X axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAcc-mean-Y | Mean body acceleration on Y axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAcc-mean-Z | Mean body acceleration on Z axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAcc-std-X | Standard deviation of body acceleration on X axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAcc-std-Y | Standard deviation of body acceleration on Y axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAcc-std-Z | Standard deviation of body acceleration on Z axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAccJerk-mean-X | Mean body acceleration jerk on X axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAccJerk-mean-Y | Mean body acceleration jerk on Y axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAccJerk-mean-Z | Mean body acceleration jerk on Z axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAccJerk-std-X | Standard deviation of body acceleration jerk on X axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAccJerk-std-Y | Standard deviation of body acceleration jerk on Y axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAccJerk-std-Z | Standard deviation of body acceleration jerk on Z axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyGyro-mean-X | Mean body gyroscope on X axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyGyro-mean-Y | Mean body gyroscope on Y axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyGyro-mean-Z | Mean body gyroscope on Z axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyGyro-std-X | Standard deviation of body gyroscope on X axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyGyro-std-Y | Standard deviation of body gyroscope on Y axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyGyro-std-Z | Standard deviation of body gyroscope on Z axis based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAccMag-mean | Mean body acceleration magnitude based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyAccMag-std | Standard deviation of body acceleration magnitude based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyBodyAccJerkMag-mean | Mean body acceleration jerk magnitude based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyBodyAccJerkMag-std | Standard deviation of body acceleration jerk magnitude based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyBodyGyroMag-mean | Mean body gyroscope magnitude based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyBodyGyroMag-std | Standard deviation of body gyroscope magnitude based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyBodyGyroJerkMag-mean | Mean body gyroscope jerk magnitude based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)
| fBodyBodyGyroJerkMag-std | Standard deviation of body gyroscope jerk magnitude based on signals with Fast Fourier Transform (FFT) applied. (Note the 'f' to indicate frequency domain signals)

