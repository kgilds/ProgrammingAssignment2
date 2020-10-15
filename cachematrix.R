## Put comments here that give an overall description of what your
## functions do

#makeCacheMatrix takes a matrix as input and mi a place holder for results of 
#mi varialbe is set to null but will eventually be the inverse of the input matrix
#the set portion allows one to record a new matrix input 
#the get portion 
#the setsolve function uses the solve base function to inverse the matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mi <- NULL
  set <- function(y) {
    x <<- y
    mi <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) mi <<- solve
  getsolve <- function()mi
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}


## Write a short comment describing this function
## The cacheSolve function grabs functions and functions from the makeCacheMatrix if there is no change it returns the cached value or takes new input and updates the calculation. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mi <- x$getsolve()
  if(!is.null(mi)) {
    message("getting cached data")
    return(mi)
  }
  data <- x$get()
  mi <- solve(data, ...)
  x$setsolve(mi)
  m
}

