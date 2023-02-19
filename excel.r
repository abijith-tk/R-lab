library(readxl)        # Library to read excel files
df=read_xlsx('path/items.xlsx')
df=unique(df)
print(df)
nr=c(product='file',number=5)
df=rbind(df,nr)
print(df)

library(writexl)      # Library to write excel files
write_xlsx(df,"path/filename.xlsx")
