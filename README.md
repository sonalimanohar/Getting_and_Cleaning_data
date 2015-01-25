The goal of this exercise is to prepare tidy data that can be used for later analysis. 
Following is the excerpt from the Course Requirements:

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Following is the link to where the data was obtained from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Download the Dataset onto your local machine and unzip it. It will be unzipped to a folder called “UCI HAR Dataset”. This folder will in turn have 2 types of data: 1) Readings from people selected for training
2) Readings from people selected as testing. The folder also contains metadata in the form of types of readings collected (Features.txt) and Activity information.

The run_analysis.R file performs the following operations:

	1	a) Creates datasets out of each of the txt files from test and training folders and also the metadata files. 8 Datasets will be created in the first step. b) Merges the subject, x and y datasets by rows to combine them into 3 datasets. 
	2	a) Reads “features” dataset and extracts rows that have the strings “mean()” and “std()” in them. b) Filters out the columns from the x dataset based on step a. A new clean dataset x is created with only the mean and std columns.
	3	Uses descriptive activity names to name the activities in the data set. This is done in step 1 for simplicity.
	4	Appropriately labels the data set with descriptive variable names. This is done by transposing the rows from the features dataset to the columns in the x dataset. The column names are similar except that they do not contain () and -. 
	5	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  
