## Put comments here that give an overall description of what your
## functions do
# makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix
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
## Return a matrix that is the inverse of 'comcat'
# The following function returns the inverse of the matrix. It first checks if
# the inverse has already been computed. If so, it gets the result and skips the
# computation. 
cacheSolve <- function(cacmat, ...) {
          inv <- camat$getinverse()
  if(!is.null(inv)) {
    message("cached data.")
    return(inv)
  }
 data <- cacmat$get()
  inv <- solve(data)
  cacmat$setinverse(inv)
  inv       
}
 ## Sample run:
## > cacmat= rbind(c(1, -1/4), c(-1/4, 1))
## > m= makeCacheMatrix(cacmat)
## > m$get()
##       [,1]  [,2]
## [1,]  1.00 -0.25
## [2,] -0.25  1.00
#> cacheSolve(m)
##           [,1]       [,2]
## [1,] -0.1428571  0.2857143
## [2,]  0.5714286 -0.1428571
#> cacheSolve(m)
##           [,1]       [,2]
## [1,] -0.1428571  0.2857143
## [2,]  0.5714286 -0.1428571
