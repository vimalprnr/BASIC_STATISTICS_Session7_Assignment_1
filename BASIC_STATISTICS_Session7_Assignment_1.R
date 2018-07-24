###
# Problem 1

cars<- rownames(mtcars)
columnName<- colnames(mtcars)
par(mfrow = c(3,4))
for(i in 1:ncol(mtcars))
{
  tempVect <-  mtcars[,i]
  names(tempVect) <- cars
  hist(tempVect,main = paste("Histogram Of ",columnName[i]),xlab = columnName[i]) 
}



#Problem 2
plots<- list()
cars<- rownames(mtcars)
columnName<- colnames(mtcars)
par(mfrow = c(3,4))
for(i in 1:ncol(mtcars))
local({
  i <- i
  tempVect <-  mtcars[,i]
  names(tempVect) <- cars
  p1<- ggplot(mtcars,aes(x = mtcars[,i]))+geom_density(fill='lightblue')
  plots[[i]] <<- p1
  p1
})
for (i in 1:length(plots)) {
  plots[i]
  
}
par(mfrow = c(3,4))
#Problem 3
histGrams <- 0
cars<- rownames(mtcars)
columnName<- colnames(mtcars)
for(i in 1:ncol(mtcars))
{
  tempVect <-  mtcars[,i]
  names(tempVect) <- cars
  boxplot(tempVect,xlab = columnName[i])
}

