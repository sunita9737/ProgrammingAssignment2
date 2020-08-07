## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function is only used to create the special matrix whose inverse will
## be calculated and cached via cachesole function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
        x <<- y
        inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function
## this function is used to print the cached inverse if already calculated else 
## calculate inverse then print

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached inverse")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
  
}