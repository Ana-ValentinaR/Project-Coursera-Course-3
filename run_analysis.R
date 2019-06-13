
###set working directory, replace with your path
getwd()
setwd("Your path")
getwd()
rm(list=ls())
#load dplyr package
library(dplyr)

###downalod data.
if(!file.exists("data")) {
        dir.create("data")}
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./data/dataset.zip", method="curl")
list.files("./data")

###unzip the content

zipF<- "./data/dataset.zip"
outDir<-"./data"
unzip(zipF,exdir=outDir)

###see the files from the folder
list.files("./data/UCI HAR Dataset")


###read the label for the columns needed to label train & test datasets
features <- read.table("./data/UCI HAR Dataset/features.txt", col.names = c("n","functions"))
#View(features)
###read training data and label the columns
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
#str(x_train)
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names = "training_label")
#str(y_train)

###read test data and label the columns
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names = "training_label")

###read the subject code for train & test
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

#######TASK 1: MERGES THE TRAINING AND THE TEST SETS TO CREATE ONE DATA SET
###merge X_train & X_test (adding the rows from test to train)

X<-rbind(x_train,x_test)

###merge Y_train & Y_test (adding the rows from test to train)
Y<-rbind(y_train,y_test)

###merge the subject from train & test
subject<-rbind(subject_train, subject_test)

mergedData<-cbind(subject,Y,X)
#str(mergedData)

#######TASK 2:EXTRACTS ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT.

###identify the variables with info for mean & std
columnstokeep<-grep("subject|training_label|mean|std",colnames(mergedData),value=TRUE)
#View(columnstokeep)


###define a new dataset with those variables

newData<-mergedData[ ,columnstokeep]
#str(newData)


#######TASK 3: USES DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN THE DATA SET
newData$training_label <- factor(newData$training_label,
                                 levels = c(1,2,3,4,5,6),
                                 labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))

#table(newData$training_label)

#######TASK 4: APPROPRIATELY LABELS THE DATA SET WITH DESCRIPTIVE VARIABLE NAMES
#check the actual names in order to see what should be changed
View(names(newData))

#implement the necessary changes

newData<-rename(newData,activity=training_label)
names(newData)<-gsub("^t", "Time",names(newData))
names(newData)<-gsub("^f", "Frequency",names(newData))
names(newData)<-gsub("Acc", "Accelerometer",names(newData))
names(newData)<-gsub("Gyro", "Gyroscope",names(newData))
names(newData)<-gsub("BodyBody", "Body",names(newData))
names(newData)<-gsub("Mag", "Magnitude",names(newData))
names(newData)<-gsub("Mag", "Magnitude",names(newData))
names(newData)<-gsub(pattern = "[[:punct:]]+",replacement = "",x = names(newData))

names(newData)<-gsub("mean", "Mean", names(newData))
names(newData)<-gsub("std", "Std",names(newData))

#check the names cleaned
View(names(newData))

#####Task 5:From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(reshape2)
tidy_data <- melt(newData, id = c("subject", "activity"))
#str(tidy_data)
#View(table(tidy_data$variable))
tidy_dataFinal <- dcast(tidy_data, subject + activity ~ variable, mean)

#View(tidy_dataFinal)

write.table(tidy_dataFinal, "tidy_dataFinal.txt", row.name=FALSE)

