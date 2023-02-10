library(readxl)
df=read_xlsx('/home/student/abijith/R/items.xlsx')
df=unique(df)
df
nr=c(product='file',number=5)

df=rbind(df,nr)
df
