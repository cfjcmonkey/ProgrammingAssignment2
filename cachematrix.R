## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## create a matrix object to have get and set
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function() x
  setInv<-function(yinv){
    inv<<-yinv
  }
  getInv<-function() inv
  list(set=set, get=get, setInv=setInv, getInv=getInv)
}


## Write a short comment describing this function
## function that can cache solved value
cacheSolve <- function(x, ...) {
  inv <- x$getInv()
  if (is.null(inv)){
    inv <- solve(x$get())
    x$setInv(inv)
  }
  inv
        ## Return a matrix that is the inverse of 'x'
}
