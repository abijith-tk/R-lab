library(datasets)
data(iris)
summary(iris)

hist(iris$Sepal.Length,main = "Sepal length histogram",xlab = "Sepal length",col="lightcyan3",las=1)
colors()

hist(iris$Sepal.Width,main = "Sepal width histogram",breaks=5,xlab = "Sepal width",col="paleturquoise2",las=1,border="magenta ")

dev.off()
boxplot(iris$Sepal.Length,main = "Sepal length boxplot",xlab = "Sepal length",col="lightcyan3",las=1)

