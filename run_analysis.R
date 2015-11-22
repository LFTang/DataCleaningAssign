library(dplyr)
#read features & activity label
setwd("~/R/UCI HAR Dataset")
features <- read.table("features.txt")
names(features) <- c("ID","feature")
activity <- read.table("activity_labels.txt")
names(activity) <- c("ID","label")

#read training set
setwd("~/R/UCI HAR Dataset/train")
subject_train <- read.table("subject_train.txt")
X_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")

#read testing set
setwd("~/R/UCI HAR Dataset/test")
subject_test <- read.table("subject_test.txt")
X_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")

#<Objective 1>combine datasets & <Objective 3&4>label variables
setwd("~/R/UCI HAR Dataset")
subject <- rbind(subject_train, subject_test)
names(subject) <- c("Subject")
X <- rbind(X_train, X_test)
names(X) <- features$feature
y <- rbind(y_train, y_test)
names(y) <- c("Activity")

#(optional)Cleaning up
rm(subject_train, subject_test, X_train, X_test, y_train, y_test)

#<Objective 2>select X to include only mean/std related columns
X.selected <-X [,grep("mean\\(\\)|std\\(\\)",features$feature,ignore.case = TRUE)]

#Change activity data y$V1 (1:5) to factor names ("WALKING",..."STANDING"...)
y$Activity<-factor(y$Activity,labels = activity$label)

#Combine everything
total <- cbind(subject, y, X.selected)

#Group and summarize
summary <- total %>% group_by(Subject, Activity) %>% summarize_each(funs(mean))

setwd("~/R/DataCleaningAssign")
write.table(summary,file = "summary.txt")

