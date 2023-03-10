data=c(sample(10:100,replace = TRUE,size = 10))
x=c(seq(1:10))
tsdata=ts(data,start = c(2012,1),frequency = 10)
plot(tsdata)

td1=c(sample(10:100,replace = TRUE,size = 10))
td2=c(sample(10:100,replace = TRUE,size=10))

# Converting the data into a matrix
td=matrix(c(td1,td2),nrow=10)
tsdata=ts(td,start=c(2022,1),frequency = 10)
plot(tsdata,main="Multiple Time series data")

