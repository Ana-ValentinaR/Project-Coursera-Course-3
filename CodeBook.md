**Code Book**

This code book present the main steps followed in order to obtain the file "tidy_dataFinal.txt" and a detailed description of the file

**Main steps followed in order to obtain the output as presented in the script run_analysis.R:**

1.Downloading the initial datasets and additional information from  
"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" in the project folder  

2.Unzip the downloaded file and inspect the content in order to understand the project requirements 

3.Read the relevant and needed datasets into R  

4.Solve the project requests:    
- Merges the training and the test sets to create one data set  
- Extracts only the measurements on the mean and standard deviation for each measurement  
- Uses descriptive activity names to name the activities in the data set  
- Appropriately labels the data set with descriptive variable names  
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject  

**Description for the file "tidy_dataFinal.txt":**
A dataset with 180 rows (coming from 30 respondents with 6 type of activity each) and 81 variables    
**List of the variables in the dataset:**  
**Identifiers**  
subject - The id of the respondent ranging from 1 to 30    
activity - The type of the activity performed with 6 values (1=WALKING, 2=WALKING_UPSTAIRS, 3=WALKING_DOWNSTAIRS, 4=SITTING, 5=STANDING,6=LAYING)  
**Measurement variables (mean value per respondent & activity)**  
TimeBodyAccelerometerMeanX  
TimeBodyAccelerometerMeanY  
TimeBodyAccelerometerMeanZ  
TimeBodyAccelerometerStdX  
TimeBodyAccelerometerStdY   
TimeBodyAccelerometerStdZ  
TimeGravityAccelerometerMeanX  
TimeGravityAccelerometerMeanY  
TimeGravityAccelerometerMeanZ  
TimeGravityAccelerometerStdX  
TimeGravityAccelerometerStdY  
TimeGravityAccelerometerStdZ  
TimeBodyAccelerometerJerkMeanX  
TimeBodyAccelerometerJerkMeanY  
TimeBodyAccelerometerJerkMeanZ  
TimeBodyAccelerometerJerkStdX  
TimeBodyAccelerometerJerkStdY  
TimeBodyAccelerometerJerkStdZ  
TimeBodyGyroscopeMeanX  
TimeBodyGyroscopeMeanY  
TimeBodyGyroscopeMeanZ  
TimeBodyGyroscopeStdX  
TimeBodyGyroscopeStdY  
TimeBodyGyroscopeStdZ  
TimeBodyGyroscopeJerkMeanX  
TimeBodyGyroscopeJerkMeanY  
TimeBodyGyroscopeJerkMeanZ  
TimeBodyGyroscopeJerkStdX  
TimeBodyGyroscopeJerkStdY  
TimeBodyGyroscopeJerkStdZ  
TimeBodyAccelerometerMagnitudenitudeMean  
TimeBodyAccelerometerMagnitudenitudeStd  
TimeGravityAccelerometerMagnitudenitudeMean  
TimeGravityAccelerometerMagnitudenitudeStd  
TimeBodyAccelerometerJerkMagnitudenitudeMean  
TimeBodyAccelerometerJerkMagnitudenitudeStd  
TimeBodyGyroscopeMagnitudenitudeMean  
TimeBodyGyroscopeMagnitudenitudeStd  
TimeBodyGyroscopeJerkMagnitudenitudeMean  
TimeBodyGyroscopeJerkMagnitudenitudeStd  
FrequencyBodyAccelerometerMeanX  
FrequencyBodyAccelerometerMeanY  
FrequencyBodyAccelerometerMeanZ  
FrequencyBodyAccelerometerStdX  
FrequencyBodyAccelerometerStdY   
FrequencyBodyAccelerometerStdZ  
FrequencyBodyAccelerometerMeanFreqX  
FrequencyBodyAccelerometerMeanFreqY  
FrequencyBodyAccelerometerMeanFreqZ  
FrequencyBodyAccelerometerJerkMeanX  
FrequencyBodyAccelerometerJerkMeanY  
FrequencyBodyAccelerometerJerkMeanZ  
FrequencyBodyAccelerometerJerkStdX  
FrequencyBodyAccelerometerJerkStdY  
FrequencyBodyAccelerometerJerkStdZ  
FrequencyBodyAccelerometerJerkMeanFreqX  
FrequencyBodyAccelerometerJerkMeanFreqY  
FrequencyBodyAccelerometerJerkMeanFreqZ  
FrequencyBodyGyroscopeMeanX  
FrequencyBodyGyroscopeMeanY  
FrequencyBodyGyroscopeMeanZ  
FrequencyBodyGyroscopeStdX  
FrequencyBodyGyroscopeStdY  
FrequencyBodyGyroscopeStdZ  
FrequencyBodyGyroscopeMeanFreqX  
FrequencyBodyGyroscopeMeanFreqY  
FrequencyBodyGyroscopeMeanFreqZ  
FrequencyBodyAccelerometerMagnitudenitudeMean  
FrequencyBodyAccelerometerMagnitudenitudeStd  
FrequencyBodyAccelerometerMagnitudenitudeMeanFreq  
FrequencyBodyAccelerometerJerkMagnitudenitudeMean  
FrequencyBodyAccelerometerJerkMagnitudenitudeStd  
FrequencyBodyAccelerometerJerkMagnitudenitudeMeanFreq  
FrequencyBodyGyroscopeMagnitudenitudeMean  
FrequencyBodyGyroscopeMagnitudenitudeStd  
FrequencyBodyGyroscopeMagnitudenitudeMeanFreq  
FrequencyBodyGyroscopeJerkMagnitudenitudeMean  
FrequencyBodyGyroscopeJerkMagnitudenitudeStd  
FrequencyBodyGyroscopeJerkMagnitudenitudeMeanFreq  



