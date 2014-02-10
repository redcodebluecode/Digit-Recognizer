# makes the KNN submission
# from kaggle.com tutorial

library(FNN)

train <- read.csv("../data/train.csv", header=TRUE)
test <- read.csv("../data/test.csv", header=TRUE)

labels <- train[,1]
train <- train[,-1]

results <- (0:9)[knn(train, test, labels, k = 10, algorithm="cover_tree")]

write(results, file="knn_benchmark.csv", ncolumns=1) 
# This is not the submission file. It includes the prediction, but not the ImageId. One can either input the document into a spss file and generate the ID through SPSS, or generate the ID by using R. Either one should work.

# The matching rate is around 96.557%.
