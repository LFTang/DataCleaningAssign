---
title: "Readme"
output: html_document
---


Running the script
============================
1. Download the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Unzipp the files into "~/R" folder.
3. Excecute run_anlysis.R script


Function of the script
=============================
Running the script in R will:

1. Combin measurements from both the training and testing sets into one dataset using cbind(). 
2. Extract only the measurements on the mean and standard deviation for each measurement by subsetting based on column names.
3. Includ subject number and their represented activity in the dataset by rbind().
4. Calculate and an average of each parameters by each participant and activity using dplyr() functions.



