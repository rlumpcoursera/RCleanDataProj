# Summary: # 
   This dataset provides a calculated average of all std and mean data
   resulting from the merging of the training and test data that is 
   collected in the "Human Activity Recognition Using Smartphones Dataset".      
   The std and mean average values are presented on a per row basis for 
   each subject and the actvity that was performed to create the data. 
            
# Steps to Data Creation: #
  * Merge test and training data found in the X_traia.txtn and X_test.txt files
  * Reduce above merged data set to "std" and "mean" data only carefully avoiding meanFreq data
  * Merge subject data set found in subject_train.txt and subject_test.txt files
  * Merge the activites data set found in Y_train.txt and Y_test.txt data
  * Give activities "english" names (ie. 1 => WALKING)
  * Aggregate merged std and mean dataset by applying mean (ie calculate average) and groupng in rows by the merged subject and actvites data sets        
  * Give column names from derived from feature.txt "R language friendly" formats (ie. dot notatio) and also precede with "Avg" to indicate resultant data displayed 

# Codebook #   

 Column #  Variable                            Values
 --------  ---------------------------------   -----------
    1      Subject                             1 thru 30
    2      Activty                             WALKING, WALKING_UPSTAIRS
                                               WALKING_DOWNSTAIRS, SITTING,
                                               STANDING, LAYING
    3      Avg.tBodyAcc.mean.X                 real number
    4      Avg.tBodyAcc.mean.Y                 real number
    5      Avg.tBodyAcc.mean.Z                 real number
    6      Avg.tBodyAcc.std.X                  real number
    7      Avg.tBodyAcc.std.Y                  real number
    8      Avg.tBodyAcc.std.Z                  real number
    9      Avg.tGravityAcc.mean.X              real number
    10     Avg.tGravityAcc.mean.Y              real number
    11     Avg.tGravityAcc.mean.Z              real number
    12     Avg.tGravityAcc.std.X               real number
    13     Avg.tGravityAcc.std.Y               real number
    14     Avg.tGravityAcc.std.Z               real number
    15     Avg.tBodyAccJerk.mean.X             real number
    16     Avg.tBodyAccJerk.mean.Y             real number
    17     Avg.tBodyAccJerk.mean.Z             real number
    18     Avg.tBodyAccJerk.std.X              real number
    19     Avg.tBodyAccJerk.std.Y              real number
    20     Avg.tBodyAccJerk.std.Z              real number
    21     Avg.tBodyGyro.mean.X                real number
    22     Avg.tBodyGyro.mean.Y                real number
    23     Avg.tBodyGyro.mean.Z                real number
    24     Avg.tBodyGyro.std.X                 real number
    25     Avg.tBodyGyro.std.Y                 real number
    26     Avg.tBodyGyro.std.Z                 real number
    27     Avg.tBodyGyroJerk.mean.X            real number
    28     Avg.tBodyGyroJerk.mean.Y            real number
    29     Avg.tBodyGyroJerk.mean.Z            real number
    30     Avg.tBodyGyroJerk.std.X             real number
    31     Avg.tBodyGyroJerk.std.Y             real number
    32     Avg.tBodyGyroJerk.std.Z             real number
    33     Avg.tBodyAccMag.mean                real number
    34     Avg.tBodyAccMag.std                 real number
    35     Avg.tGravityAccMag.mean             real number
    36     Avg.tGravityAccMag.std              real number
    37     Avg.tBodyAccJerkMag.mean            real number
    38     Avg.tBodyAccJerkMag.std             real number
    39     Avg.tBodyGyroMag.mean               real number
    40     Avg.tBodyGyroMag.std                real number
    41     Avg.tBodyGyroJerkMag.mean           real number
    42     Avg.tBodyGyroJerkMag.std            real number
    43     Avg.fBodyAcc.mean.X                 real number
    44     Avg.fBodyAcc.mean.Y                 real number
    45     Avg.fBodyAcc.mean.Z                 real number
    46     Avg.fBodyAcc.std.X                  real number
    47     Avg.fBodyAcc.std.Y                  real number
    48     Avg.fBodyAcc.std.Z                  real number
    49     Avg.fBodyAccJerk.mean.X             real number
    50     Avg.fBodyAccJerk.mean.Y             real number
    51     Avg.fBodyAccJerk.mean.Z             real number
    52     Avg.fBodyAccJerk.std.X              real number
    53     Avg.fBodyAccJerk.std.Y              real number
    54     Avg.fBodyAccJerk.std.Z              real number
    55     Avg.fBodyGyro.mean.X                real number
    56     Avg.fBodyGyro.mean.Y                real number
    57     Avg.fBodyGyro.mean.Z                real number
    58     Avg.fBodyGyro.std.X                 real number
    59     Avg.fBodyGyro.std.Y                 real number
    60     Avg.fBodyGyro.std.Z                 real number
    61     Avg.fBodyAccMag.mean                real number
    62     Avg.fBodyAccMag.std                 real number
    63     Avg.fBodyBodyAccJerkMag.mean        real number
    64     Avg.fBodyBodyAccJerkMag.std         real number
    65     Avg.fBodyBodyGyroMag.mean           real number
    66     Avg.fBodyBodyGyroMag.std            real number
    67     Avg.fBodyBodyGyroJerkMag.mean       real number
    68     Avg.fBodyBodyGyroJerkMag.std        real number
