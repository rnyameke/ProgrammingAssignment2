## makeCacheMatrix creates a matrix that can cache its inverse; cacheSolve returns the inverse
## of a matrix from the cache. If the inverse has not been stored in the cache already,
## it calculates the inverse and stores it int he cache

## Create a matrix to set and get values of matrix and inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  
  #set the value of x
  set <- function (y){
    x <<- y
    a <<- NULL
  }
  
  #get the value of x
  get <- function(solve) a <<- solve
  
  #set the value of the inverse
  setinv <- function(solve) a <<- solve
  
  #get the value of the inverse
  getinv <- function() a

}


## Retrieves inverse of matrix if it's in the cache, else calculates it and sets its value

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  #check to see if the inverse has already been calculated
  a <- x$getinv()
  if(!is.null(a)) {
    message("getting cached data")
    return(m)
  }
  #else calculate the inverse
  data <- x$get()
  a <- solve(data, ...)
  x$setinv(m)
  m
}
