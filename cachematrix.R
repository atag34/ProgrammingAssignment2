## Put comments here that give an overall description of what your
## functions do
## Following Functions are to search for cache of inverse of matrix, 
## if not cached it will create and cache the inverse

## Write a short comment describing this function
## set the matrix x
## get matrix x
## set inverse matrix x
## get inverse of matrix x

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(solve) inv <<- solve
  getinv <- function() inv
  list(set=set, get=get, setinv=setinv, getinv=getinv)
}

## Write a short comment describing this function
## If cache of inverse exists, return the inverse of matrix x
##if not it will return and cache the inverse of matrix X

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  inv
}
        ## Return a matrix that is the inverse of 'x'
CacheMatrix <- makeCacheMatrix(x)
cacheSolve(CacheMatrix)

