library(lattice)
library(datasets)
data("iris")

# Scatterplot 

xyplot(Sepal.Length~Sepal.Width | iris$Species,groups = iris$Species,data=iris)


xyplot(Sepal.Length~Sepal.Width | iris$Species,groups = iris$Species,data=iris,scales = "free")


xyplot(Sepal.Length~Sepal.Width | iris$Species,groups = iris$Species,data=iris,
       type=(c("P","smooth")))


xyplot(Sepal.Length~Sepal.Width | iris$Species,groups = iris$Species,data=iris,
       type=(c("P","smooth")),scales = "free")

# 3D Scatterplot  --> eRRoR

cloud(Species~Sepal.Length*Petal.Length,data=iris)




# Boxplot

bwplot(iris$Sepal.Length~iris$Species)
