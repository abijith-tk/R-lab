library(ggplot2)
library(dplyr)
library(tidyselect)
group=rep(c("N","S","E","W"),times=4)
year=as.numeric(rep(seq(2017,2020),each=4))
price=runif(16,50,100)
data=data.frame(year,price,group)
ggplot(data,aes(x=year,y=price,fill=group))+geom_area()

# heatmap
data=matrix(rnorm(100,0,10),nrow=10,ncol=10)
data

heatmap(data,scale = 'column')
heatmap(data,scale = 'column',Colv = NA,Rowv = NA) # Remove dendrogram

# Correlogram
library(corrplot)
data=matrix(rnorm(400,0,5),nrow=10,ncol=10)
data
cordata=cor(data)
corrplot(cordata)
corrplot(cor(data),method='circle')
corrplot(cor(data),method = 'pie')
corrplot(cor(data),method = 'number')
corrplot(cor(data),method = 'color')
corrplot(cor(data),type = 'upper')
corrplot(cor(data),method = 'pie',type = 'lower')
