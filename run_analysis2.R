
# Assuming the data has been downloaded and extracted, this file will read the data, merge it,
# extract only relevant subsets, label it and finally provide a tidy-data set to run for further analysis on.



# Read and Convert Data
# Desc : Data is read file by file and converted into a single data frame



# Load training data
training = read.csv("UCI HAR Dataset/train/X_train.txt", sep = "", header = FALSE)
training[,562] = read.csv("UCI HAR Dataset/train/Y_train.txt", sep = "", header = FALSE)
training[,563] = read.csv("UCI HAR Dataset/train/subject_train.txt", sep = "", header = FALSE)

#data.training = data.frame(data.training.subject, data.training.y, data.training.y)
#names(data.training) = c(c('subject','activity'), data.features)

# Load testing data
testing = read.csv("UCI HAR Dataset/test/X_test.txt", sep = "", header = FALSE)
testing[,562] = read.csv("UCI HAR Dataset/test/Y_test.txt", sep = "", header = FALSE)
testing[,563] = read.csv("UCI HAR Dataset/test/subject_test.txt", sep = "", header = FALSE)

#data.testing = data.frame(data.testing.subject, data.testing.x, data.testing.y)
#names(data.testing) = c(c('subject','activity'), data.features)

# Load activity labels
data.activitylabels = read.csv("UCI HAR Dataset/activity_labels.txt", sep = "", header = FALSE)

# Load features
data.features = read.csv("UCI HAR Dataset/features.txt", sep = "", header = FALSE)
data.features[,2] = gsub('-mean', 'Mean', data.features[,2])
data.features[,2] = gsub('-std', 'Std Dev', data.features[,2])
data.features[,2] = gsub('[-()]','', data.features[,2])


# Merges training and testing data into 1 data set named data.all
data.all = rbind(training, testing)



