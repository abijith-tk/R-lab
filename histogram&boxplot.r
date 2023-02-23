# Loading iris datasets
library(datasets)
data(iris)

# Histogram 
hist(iris$Sepal.Length,main = "Sepal length histogram",xlab = "Sepal length",col="lightcyan3",las=1)
hist(iris$Petal.Length,main = "Petal length histogram",xlab = "Petal length",col="royalblue",
     las=3,border='palegreen',breaks = 10)

# Boxplot
boxplot(iris$Sepal.Length,main='Sepal length',col='sienna2',cex.axis=1)
dev.off()
boxplot(iris$Sepal.Width,main='Sepal width',col='orchid',cex.axis=1)
dev.off()
boxplot(iris$Petal.Length,main='Petal length',col='seagreen',cex.axis=1)
dev.off()
boxplot(iris$Petal.Width,main='Petal width',col='mediumblue',cex.axis=0.8)
dev.off()
boxplot(iris$Sepal.Length,iris$Sepal.Width,iris$Petal.Length,iris$Petal.Width,main="Box plot on iris dataset",
        col = c('indianred2','springgreen1','wheat','seashell4'))
