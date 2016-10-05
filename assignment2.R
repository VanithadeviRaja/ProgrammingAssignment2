#cache matrix
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
cacmat = rbind(c(1, 2), c(4, 1)) 
mat = makeCacheMatrix(cacmat)
mat$get()

cacheSolve(mat)
cacheSolve(mat)
