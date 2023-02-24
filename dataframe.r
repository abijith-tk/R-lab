# Create a data frame with columns std id,std name,marks

id=c(1:4)
name=c("Abc","Efg","Hij","Klm")
mark1=c(90,92,96,94)
mark2=c(94,90,96,98)
df=data.frame("Std_id"=id,"Std_name"=name,"Mark1"=mark1,"Mark2"=mark2)
print(df)

# i.Add new column percentage
percentage=(df$Mark1+df$Mark2)/200*100
df['Percentage']=percentage
print(df)

# ii. Add two more rows to the existing data frame
df2=data.frame("Std_id"=c(5,6),"Std_name"=c("Mno","Pqr"),"Mark1"=c(90,98),"Mark2"=c(94,96),"Percentage"=c(0,0))
df=rbind(df,df2)

# iii. Drop column percentage
df=subset(df,select = -Percentage)
df

# iv. Drop last two rows in the data frame
len=nrow(df)
df=df[-c(len,len-1),]
df

# v. Rename the column Std_name into name
colnames(df)[2]="Name"
df
