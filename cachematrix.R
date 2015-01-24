## makeCacheMatrix creates a matrix that can cache its inverse; it sets and gets the values
##of the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  
  #set the value of the matrix
  set <- function (y){
    x <<- y
    a <<- NULL
  }
  
  #get the value of the matrix
  get <- function() x
  
  #set the value of the inverse of the matrix
  setinv <- function(inv) a <<- inv
  
  #get the value of the inverse of the matrix
  getinv <- function() a
  list(set = set, get = get, setinv = setinv, getinv = getinv)

}

##cacheSolve returns the inverse of a matrix from the cache. If the inverse has not
##been stored in the cache already, it calculates the inverse and stores it in the cache

cacheSolve <- function(x, ...) {
  
  #check to see if the inverse has already been calculated
  a <- x$getinv()
  if(!is.null(a)) {
    message("getting cached data")
    return(a)
  }
  
  #else calculate the inverse, cache the value, and return the value
  data <- x$get()
  a <- solve(data)
  x$setinv(a)
  a
}