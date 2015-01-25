Code Book for Course Project
====================



### 1. Subject

----------
Range: From 1 to 30.
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

 
### 2. Data Source


----------

A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


###3. Data Structure


----------

The Project Dataset includes:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


###4. Activities


----------


LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS


###5. Features


----------
Based on Feature Info, the column names have been changed.
- Acc -> Accelerometer
- Gyro -> Gyroscope
- Mag -> Magnitude
- Jerk -> Jerk
- ^t -> Time
- ^f -> Frequency
- mean[(][)] -> Mean
- std[(][)] ->StandardDeviation

     [1] "TimeBody.Accelerometer.Mean.X"                                   
     [2] "TimeBody.Accelerometer.Mean.Y"                                   
     [3] "TimeBody.Accelerometer.Mean.Z"                                   
     [4] "TimeBody.Accelerometer.StandardDeviation.X"                      
     [5] "TimeBody.Accelerometer.StandardDeviation.Y"                      
     [6] "TimeBody.Accelerometer.StandardDeviation.Z"                      
     [7] "TimeGravity.Accelerometer.Mean.X"                                
     [8] "TimeGravity.Accelerometer.Mean.Y"                                
     [9] "TimeGravity.Accelerometer.Mean.Z"                                
    [10] "TimeGravity.Accelerometer.StandardDeviation.X"                   
    [11] "TimeGravity.Accelerometer.StandardDeviation.Y"                   
    [12] "TimeGravity.Accelerometer.StandardDeviation.Z"                   
    [13] "TimeBody.Accelerometer.Jerk.Mean.X"                              
    [14] "TimeBody.Accelerometer.Jerk.Mean.Y"                              
    [15] "TimeBody.Accelerometer.Jerk.Mean.Z"                              
    [16] "TimeBody.Accelerometer.Jerk.StandardDeviation.X"                 
    [17] "TimeBody.Accelerometer.Jerk.StandardDeviation.Y"                 
    [18] "TimeBody.Accelerometer.Jerk.StandardDeviation.Z"                 
    [19] "TimeBody.Gyroscope.Mean.X"                                       
    [20] "TimeBody.Gyroscope.Mean.Y"                                       
    [21] "TimeBody.Gyroscope.Mean.Z"                                       
    [22] "TimeBody.Gyroscope.StandardDeviation.X"                          
    [23] "TimeBody.Gyroscope.StandardDeviation.Y"                          
    [24] "TimeBody.Gyroscope.StandardDeviation.Z"                          
    [25] "TimeBody.Gyroscope.Jerk.Mean.X"                                  
    [26] "TimeBody.Gyroscope.Jerk.Mean.Y"                                  
    [27] "TimeBody.Gyroscope.Jerk.Mean.Z"                                  
    [28] "TimeBody.Gyroscope.Jerk.StandardDeviation.X"                     
    [29] "TimeBody.Gyroscope.Jerk.StandardDeviation.Y"                     
    [30] "TimeBody.Gyroscope.Jerk.StandardDeviation.Z"                     
    [31] "TimeBody.Accelerometer.Magnitude.Mean"                           
    [32] "TimeBody.Accelerometer.Magnitude.StandardDeviation"              
    [33] "TimeGravity.Accelerometer.Magnitude.Mean"                        
    [34] "TimeGravity.Accelerometer.Magnitude.StandardDeviation"           
    [35] "TimeBody.Accelerometer.Jerk.Magnitude.Mean"                      
    [36] "TimeBody.Accelerometer.Jerk.Magnitude.StandardDeviation"         
    [37] "TimeBody.Gyroscope.Magnitude.Mean"                               
    [38] "TimeBody.Gyroscope.Magnitude.StandardDeviation"                  
    [39] "TimeBody.Gyroscope.Jerk.Magnitude.Mean"                          
    [40] "TimeBody.Gyroscope.Jerk.Magnitude.StandardDeviation"             
    [41] "FrequencyBody.Accelerometer.Mean.X"                              
    [42] "FrequencyBody.Accelerometer.Mean.Y"                              
    [43] "FrequencyBody.Accelerometer.Mean.Z"                              
    [44] "FrequencyBody.Accelerometer.StandardDeviation.X"                 
    [45] "FrequencyBody.Accelerometer.StandardDeviation.Y"                 
    [46] "FrequencyBody.Accelerometer.StandardDeviation.Z"                 
    [47] "FrequencyBody.Accelerometer.Jerk.Mean.X"                         
    [48] "FrequencyBody.Accelerometer.Jerk.Mean.Y"                         
    [49] "FrequencyBody.Accelerometer.Jerk.Mean.Z"                         
    [50] "FrequencyBody.Accelerometer.Jerk.StandardDeviation.X"            
    [51] "FrequencyBody.Accelerometer.Jerk.StandardDeviation.Y"            
    [52] "FrequencyBody.Accelerometer.Jerk.StandardDeviation.Z"            
    [53] "FrequencyBody.Gyroscope.Mean.X"                                  
    [54] "FrequencyBody.Gyroscope.Mean.Y"                                  
    [55] "FrequencyBody.Gyroscope.Mean.Z"                                  
    [56] "FrequencyBody.Gyroscope.StandardDeviation.X"                     
    [57] "FrequencyBody.Gyroscope.StandardDeviation.Y"                     
    [58] "FrequencyBody.Gyroscope.StandardDeviation.Z"                     
    [59] "FrequencyBody.Accelerometer.Magnitude.Mean"                      
    [60] "FrequencyBody.Accelerometer.Magnitude.StandardDeviation"         
    [61] "FrequencyBodyBody.Accelerometer.Jerk.Magnitude.Mean"             
    [62] "FrequencyBodyBody.Accelerometer.Jerk.Magnitude.StandardDeviation"
    [63] "FrequencyBodyBody.Gyroscope.Magnitude.Mean"                      
    [64] "FrequencyBodyBody.Gyroscope.Magnitude.StandardDeviation"         
    [65] "FrequencyBodyBody.Gyroscope.Jerk.Magnitude.Mean"                 
    [66] "FrequencyBodyBody.Gyroscope.Jerk.Magnitude.StandardDeviation" 

