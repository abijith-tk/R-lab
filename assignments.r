# program 1 : Create a vector and add values into it

ve=vector()
series=seq(1,10)
ve=series
print(ve)

# program 2 : Find the sum and mean

sum=sum(ve)
mean=mean(ve)
cat("sum=",sum)
cat("mean=",mean)

# program 3 : Products of elements in vector

product=1
for(i in ve){
  product=product*i
}
cat("Product=",product)

# OR

cat("Product=",prod(ve))

# program 4 : v=[1,2,3,4,5,6,-7,-6,8,-9] . Find elements between -6 and 3 

v=c(1,2,3,4,5,6,-6,-7,8,-9)
count=0
for(i in v){
  if(i>-6 && i<3){
    print(i)
    count=count+1
  }
}
cat("Count=",count)

# program 5 : Extract the last element from the vector 

len=length(v)
print(v[len])

# program 6 : Find the elements of the vector that is not present on an another vector

print(ve)  # vector 1
print(v)   # vector 2
ve[!(v %in% ve)] # elements that are not present in vector 2

# program 7 : Even numbers between 1:20

for(i in seq(1,20)){
  if(i%%2==0){
    print(i)
  }
}

