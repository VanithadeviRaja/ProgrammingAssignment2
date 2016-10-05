## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(cacmat = matrix()) {
         inv <- NULL
  set <- function(y) {
    cacmat<<- y
    inv <<- NULL
  }
 get <- function() cacmat
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
## Return a matrix that is the inverse of 'comcat'
cacheSolve <- function(cacmat, ...) {
          inv <- camat$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
 data <- cacmat$get()
  inv <- solve(data)
  cacmat$setinverse(inv)
  inv       
}
