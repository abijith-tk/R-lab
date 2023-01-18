# List

list1=list('a'=c(1:5),'b'=c(5:10))
print(list1)
print(list1$a)
print(list1$b)
names(list1)
list1[0]
head(list1)
dim(list1)

# Matrix

m1=matrix(1:20,nrow=4,ncol=5)
m2=matrix(1:20,nrow=4,ncol=5,byrow=TRUE)
dim(m1)

# Data Frame

a=c(1:10)
b=vector()
b=seq(2,20,2)
print(b)
df=data.frame('col1'=a,'col2'=b)
df
nrow(df)
ncol(df)
