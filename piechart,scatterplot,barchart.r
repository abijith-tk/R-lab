# Pie chart

data=c(10,10,20,40,25)
pie(data,main='Pie chart',col=c('thistle','seashell4','midnightblue','ivory','grey28'))

# Scatter plot
x=c(1,4,10,8,5)
y=c(4,6,10,2,8)
plot(x,y,col='red2',main='Scatter plot',xlab='x values',ylab = 'y values')
# Multiple  sactter plots
m1=matrix(c(sample(10:90,replace = TRUE,size = 30)),nrow=10,ncol=3,byrow=TRUE)
pairs(m1,col='red')

df=data.frame('x'=sample(0:100,size=50,replace = TRUE),'y'=sample(0:100,size=50,replace = TRUE),
              'z'=sample(0:100,size=50,replace = TRUE))
pairs(df,col='blue')

# Bar chart
barplot(x,xlab = 'x values',ylab = 'y values',main='Bar chart',horiz=TRUE)
barplot(y,xlab='x values',ylab='t values',horiz=FALSE,col=c('snow','slateblue','sienna2','peachpuff','seagreen4'))

# Mutiple bar chart
m1=matrix(c(2,6,10,4,8,1,9,10,5,4,6,7,3,8,5),nrow=3,ncol=5,byrow=TRUE)
x=c(1,2,3,4,5)
x2=c('a','b','c')
barplot(m1,names.arg = x,col = c('red','green','blue'),beside = TRUE)
# Without beside argument 
barplot(m1,names.arg = x,col = c('red','green','blue'))

