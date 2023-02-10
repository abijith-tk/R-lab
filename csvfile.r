id=c(1001,2001,3001,4001,5001,6001,7001)
name=c('Ancy','Bini','Celin','Dinia','Elizabeth','Fara','Goutham')
dept=c('IT','HR','Marketing','Marketing','Tech','IT','HR')
salary=c(60754,59640,69040,65043,59943,65000,69000)
projects=c(4,2,8,5,2,5,7)
df=data.frame(id,name,dept,salary,projects)
df
write.csv(df,file='/path/emp.csv',row.names = FALSE)

csvfile=read.csv('/path/emp.csv',header = TRUE,sep=',')
csvfile
min_pro=subset(csvfile,csvfile['projects']==min(csvfile['projects']))
min_pro
hr=subset(csvfile,csvfile['dept']=="HR" & csvfile['projects']<9)
hr
write.csv(hr,'/home/student/abijith/R/hr.csv')
