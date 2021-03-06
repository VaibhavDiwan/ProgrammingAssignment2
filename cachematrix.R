## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
}

#This above function creates a special "matrix" object that can cache its inverse.

#Write the following functions
#1: makeCacheMatrix

makeCacheMatrix <- function(x = matrix()) {
  ## set the value of the matrix
  i<- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  ## get the value of the matrix
  get <- function() x
  
  ## set the inverse of the matrix
  setinverse <- function(solve) i <<- solve
  getinverse <- function() i
  
  ## get the inverse of the matrix
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
}

#This above function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache

#Write the following functions
#1: cacheSolve

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  ## get the inverse of the matrix        
  i <- x$getinverse()
  
  ## check if there is the matrix   
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  ## if not: get the inverse of the matrix   
  data <- x$get()
  i <- solve(data, ...)
  ## set the inverse of the matrix 
  x$setinverse(i)
  i
}

