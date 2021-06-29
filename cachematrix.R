## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL ## to introduce an empty matrix
        set <- function(y){ ## save function
        x <<- y
        inv <<- NULL
        }
        get <- function() {x}
        setInverse <- function(inverse) {inv <<- inverse} ## time to save the value of the inverse
        getInverse <- function() {inv} ## returning the value of the inverse
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      inv <- x$getInverse()
      if(!is.null(inv)){
            message("getting cached data")
            return(inv)
      }
      mat <- x$get()
      inv <- solve(mat, ...)
      x$setInverse(inv)
      inv
}
