library(datasets)
library(e1071)
library(caTools)
library(class)
m=data("iris")

# Splitting the data
split=sample.split(iris,SplitRatio = 0.8)
train_cl=subset(iris,split=='TRUE')
test_cl=subset(iris,split=='FALSE')
train_cl
test_cl

# Feature scaling
train_scale=scale(train_cl[,1:4])
test_scale=scale(test_cl[,1:4])
train_scale
test_scale

# Model
knn_classifier1=knn(train = train_scale,test = test_scale,cl=train_cl$Species,k=1)

knn_classifier2=knn(train = train_scale,test = test_scale,cl=train_cl$Species,k=2)

knn_classifier5=knn(train = train_scale,test = test_scale,cl=train_cl$Species,k=5)

knn_classifier10=knn(train = train_scale,test = test_scale,cl=train_cl$Species,k=10)

# Confusion matrix
cm1=table(test_cl$Species,knn_classifier1)
cm1
cm2=table(test_cl$Species,knn_classifier2)
cm2
cm5=table(test_cl$Species,knn_classifier5)
cm5
cm10=table(test_cl$Species,knn_classifier10)
cm10

accuracy=function(x){sum(diag(x))/sum(rowSums(x))*100}

# Printing the accuracy
cat("K=1->",accuracy(cm1))
cat("K=2->",accuracy(cm2))
cat("K=5->",accuracy(cm5))
cat("K=10->",accuracy(cm10))

