# Read training data set
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")

# Read training labels
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

# Read training subject
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Read test data set
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")

# Read test labels
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

# Read test subject
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Read list of all features
features <- read.table("./UCI HAR Dataset/features.txt")

# Read activity labels to link class labels with their activity name.
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Merges the training and the test sets to create one data set.
x <- rbind(x_train, x_test)
subject <- rbind(subject_train, subject_test)
y <- rbind(y_train, y_test)

# Extracts only the measurements on the mean and standard deviation for each measurement.
extractcolumns <- grep("-mean\\(|-std\\(", features[,2])
x_subset <- x[,extractcolumns]

# Uses descriptive activity names to name the activities in the data set
names(y) <- "Activity"
y$Activity <- factor(y$Activity,levels=activity_labels$V1,labels=activity_labels$V2)

# Appropriately labels the data set with descriptive variable names.
names(subject) <- "Subject"
names(x_subset) <- gsub("\\(|\\)","",features[extractcolumns, 2])
ds1 <- cbind(subject,y,x_subset)
write.table(ds1, "./Getting and Cleaning Data/tidyData1.txt",row.name=FALSE)

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
ds2 <- aggregate(x=ds1,by=list(ActivityGrp=ds1$Activity,SubjectGrp=ds1$Subject),FUN=mean)
ds2 <- ds2[,!names(ds2) %in% c("Activity","Subject")]
write.table(ds2, "./Getting and Cleaning Data/tidyData2.txt",row.name=FALSE)



