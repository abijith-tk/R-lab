library(lattice)
library(datasets)

data("iris")
iris

# Scatterplot
xyplot(Sepal.Length~Petal.Length,data = iris)

# Grouping points based on their species
xyplot(Sepal.Length~Petal.Length,data = iris,group =Species)
xyplot(Sepal.Length~Petal.Length,data = iris,group =Species ,auto.key = TRUE)

# Smoothing line
xyplot(Sepal.Length~Petal.Length,data = iris,group=Species,type=c("p", "g", "smooth"))
xyplot(Sepal.Length ~ Petal.Length, data =iris,type = c("p", "g", "smooth"))
xyplot(Sepal.Length~Petal.Length | Species,data = iris,group=Species,type=c("p", "g", "smooth"),scales = 'free')


# 3D Scatterplot
cloud(Sepal.Length ~ Sepal.Length*Petal.Length,data=iris,group=Species,auto.key = TRUE)
