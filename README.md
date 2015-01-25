{\rtf1\ansi\ansicpg1252\cocoartf1343\cocoasubrtf160
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red38\green38\blue38;\red11\green81\blue160;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}}{\leveltext\leveltemplateid1\'01\'00;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\margl1440\margr1440\vieww28300\viewh15280\viewkind0
\deftab720
\pard\pardeftab720

\f0\fs28 \cf2 \expnd0\expndtw0\kerning0
The goal of this exercise is to prepare tidy data that can be used for later analysis. \
Following is the excerpt from the Course Requirements:\
\
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: \
\
\pard\pardeftab720
{\field{\*\fldinst{HYPERLINK "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"}}{\fldrslt \cf3 \expnd0\expndtw0\kerning0
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones}} \
\
Following is the link to where the data was obtained from:\
\
\pard\pardeftab720
{\field{\*\fldinst{HYPERLINK "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"}}{\fldrslt \cf3 \expnd0\expndtw0\kerning0
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip}} \
\
Download the Dataset onto your local machine and unzip it. It will be unzipped to a folder called \'93UCI HAR Dataset\'94. This folder will in turn have 2 types of data: 1) Readings from people selected for training\
2) Readings from people selected as testing. The folder also contains metadata in the form of types of readings collected (Features.txt) and Activity information.\
\
The run_analysis.R file performs the following operations:\
\
\pard\tx220\tx720\pardeftab720\li720\fi-720
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 {\listtext	1	}a) \expnd0\expndtw0\kerning0
Creates datasets out of each of the txt files from test and training folders and also the metadata files. 8 Datasets will be created in the first step. b) Merges the subject, x and y datasets by rows to combine them into 3 datasets. \
\pard\tx220\tx720\pardeftab720\li720\fi-720
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 {\listtext	2	}a) \expnd0\expndtw0\kerning0
Reads \'93features\'94 dataset and extracts rows that have the strings \'93mean()\'94 and \'93std()\'94 in them. b) Filters out the columns from the x dataset based on step a. A new clean dataset x is created with only the mean and std columns.\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	3	}\expnd0\expndtw0\kerning0
Uses descriptive activity names to name the activities in the data set. This is done in step 1 for simplicity.\
\pard\tx220\tx720\pardeftab720\li720\fi-720
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 {\listtext	4	}\expnd0\expndtw0\kerning0
Appropriately labels the data set with descriptive variable\'a0names.\'a0This is done by transposing the rows from the features dataset to the columns in the x dataset. The column names are similar except that they do not contain () and -. \
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	5	}\expnd0\expndtw0\kerning0
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.\
\pard\tx720\pardeftab720
\cf2 \
\pard\pardeftab720
\cf2 \expnd0\expndtw0\kerning0
You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.\'a0 \
\pard\tx720\pardeftab720
\cf2 \expnd0\expndtw0\kerning0
\
}