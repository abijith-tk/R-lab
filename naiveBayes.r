library(e1071)
library(caTools)
library(caret)
library(datasets)

data("iris")
# Splitting the data
split=sample.split(iris,SplitRatio = 0.8)
train_cl=subset(iris,split=="TRUE")
test_cl=subset(iris,split=="FALSE")

# feature scaling
train_scale=scale(train_cl[,1:4])
test_scale=scale(test_cl[,1:4])

# Fitting the model
set.seed(10)
classifier_cl=naiveBayes(Species ~ . ,data=train_cl)
classifier_cl

# Predict
y_pred=predict(classifier_cl,newdata=test_cl)

# Confusion matrix

cm=table(test_cl$Species,y_pred)
cm

accuracy=function(x){sum(diag(x)/sumexact(rowSums(x)))*100}
accuracy(cm)

