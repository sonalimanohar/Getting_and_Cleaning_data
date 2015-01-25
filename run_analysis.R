library(plyr)

# Step #1 Merges the training and the test sets to create one data set.
# Note that in this script, first step creates only individual tables. Step #4 will combine all tables into a single dataset
# This because it is way easier to manipulate individual tables first because they are smaller.

# First read all the text files into individual lists
subject_test <- read.table("./test/subject_test.txt", header = FALSE)
subject_train <- read.table("./train/subject_train.txt", header = FALSE)

X_test <- read.table("./test/X_test.txt", header = FALSE)
X_train <- read.table("./train/X_train.txt", header = FALSE)

y_test <- read.table("./test/y_test.txt", header = FALSE)
y_train <- read.table("./train/y_train.txt", header = FALSE)

features <- read.table("./features.txt")

activities <- read.table("./activity_labels.txt")

# Rename column names of activity table
names(activities) <- c('Activity_id', 'Activity_name')

# Step 1 continued
# Use rbind to combine individual datasets by rows. Result is all 3 datasets have 10,299 observations.
x <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
sub <- rbind(subject_train, subject_test)

# Step 1 & 3 combined. I am performing Step #3 beforehand for simplicity sake.
# Step #3 Uses descriptive activity names to name the activities in the data set
# Replace activity ids in y table with appropriate names from the activity table.
y[, 1] = activities[y[, 1], 2]

names(y) <- "Activity_name"
names(sub) <- "Subject_id"


# Step #2  Extracts only the measurements on the mean and standard deviation for each measurement
# Look for feature values that have strings "mean" and "std" in them
# Note that I have only included features that end in "mean" and "std". Features such as "fBodyAccJerk-meanFreq()-Z"
# are not included. Hence inclusion of \\(\\).
# grep commands results into the column numbers where the strings are found.
mean_std <- grep("-mean\\(\\)|-std\\(\\)", features$V2) 

# Filter out only those columns from x table that match the columns filtered out from the above features table.
# Features table has column names stored as rows

x <- x[, mean_std] 


# Step #4 Appropriately labels the data set with descriptive variable names. 
# Assign proper column names. Replace V1, V2, V3...etc with names from mean_std dataset. 
# In this case we are "transposing" the row values from mean_std to column names of x dataset.
# When assigning proper column names make the values more readable. Remove "()" from the values by replacing with
# "". I have also replaced "-". This is because ddply function does work work well with - in the column
# name. That way the column name is readable while still maintaining its description. Eg: tBodyAccmeanX  
names(x) <- gsub("\\(|\\)|\\-", "", (features[mean_std, 2]))

# Now its safe to combine all 3 tables together

# Use cbind to combine all tables by columns. Result should be a combined dataset of 10,299 rows and 68 columns.
# X has 66 columns, y has 1 column and sub has 1 column. Therefore Resultant dataset has 68 columns.
combineDataSet <- cbind(sub, y, x)



# Step #5 Create a new tidy dataset with average of each variable for each activity and each subject.
# numcolwise function is a part of plyr package and works on all numeric columns in the dataset

avg_tidy_dataset <- ddply(combineDataSet,.(Subject_id, Activity_name),numcolwise(mean))
