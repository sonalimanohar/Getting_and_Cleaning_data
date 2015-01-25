The tidy dataset included in this project contains the following 68 elements:

1 Subject_id  
2 Activity_name  
3 tBodyAccmeanX  
4 tBodyAccmeanY  
5 tBodyAccmeanZ  
6 tBodyAccstdX  
7 tBodyAccstdY  
8 tBodyAccstdZ  
9 tGravityAccmeanX  
10 tGravityAccmeanY  
11 tGravityAccmeanZ  
12 tGravityAccstdX  
13 tGravityAccstdY  
14 tGravityAccstdZ  
15 tBodyAccJerkmeanX  
16 tBodyAccJerkmeanY  
17 tBodyAccJerkmeanZ  
18 tBodyAccJerkstdX  
19 tBodyAccJerkstdY  
20 tBodyAccJerkstdZ  
21 tBodyGyromeanX  
22 tBodyGyromeanY  
23 tBodyGyromeanZ  
24 tBodyGyrostdX  
25 tBodyGyrostdY  
26 tBodyGyrostdZ  
27 tBodyGyroJerkmeanX  
28 tBodyGyroJerkmeanY  
29 tBodyGyroJerkmeanZ  
30 tBodyGyroJerkstdX  
31 tBodyGyroJerkstdY  
32 tBodyGyroJerkstdZ  
33 tBodyAccMagmean  
34 tBodyAccMagstd  
35 tGravityAccMagmean  
36 tGravityAccMagstd  
37 tBodyAccJerkMagmean  
38 tBodyAccJerkMagstd  
39 tBodyGyroMagmean  
40 tBodyGyroMagstd  
41 tBodyGyroJerkMagmean  
42 tBodyGyroJerkMagstd  
43 fBodyAccmeanX  
44 fBodyAccmeanY  
45 fBodyAccmeanZ  
46 fBodyAccstdX  
47 fBodyAccstdY  
48 fBodyAccstdZ  
49 fBodyAccJerkmeanX  
50 fBodyAccJerkmeanY  
51 fBodyAccJerkmeanZ  
52 fBodyAccJerkstdX  
53 fBodyAccJerkstdY  
54 fBodyAccJerkstdZ  
55 fBodyGyromeanX  
56 fBodyGyromeanY  
57 fBodyGyromeanZ  
58 fBodyGyrostdX  
59 fBodyGyrostdY  
60 fBodyGyrostdZ  
61 fBodyAccMagmean  
62 fBodyAccMagstd  
63 fBodyBodyAccJerkMagmean  
64 fBodyBodyAccJerkMagstd  
65 fBodyBodyGyroMagmean  
66 fBodyBodyGyroMagstd  
67 fBodyBodyGyroJerkMagmean  
68 fBodyBodyGyroJerkMagstd  

Variable Descriptions:

Subject id: Id given to each participant. This is a column merged from V1 of Subject_test and Subject_train respectively. 30 Participants in all. So the values range from 1-30.

Activity_name: Is a result of combination of 3 datasets. 1) y_test 2)y_train 3) activity_labels. The activity_names (column V2) of activity_labels provides the actual names which were replaced in this file in place of activity id.

Columns #3-68: Are the various readings from x_test and y_test files. These two files were merged using rbind to form a single dataset. Features.txt provided the names for these variables. The variable names were stored as rows in the features file. They were transposed to column names in the tidy data set.