## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
   tinv <- NULL
   set <- function(y) {
       x <<- y
       tinv <<- NULL
   }
   
   get <- function() x
   setInverse <- function(inverse) tinv <<- inverse
   getInverse <- function() tinv
   
   list(set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
  tinv <- x$getinverse()
  if(!is.null(tinv)) {
    message("getting cached inverse")
    return(tinv)
  }
  data <- x$get()
  tinv <- solve(data)
  x$setinverse(tinv)
  tinv
}
