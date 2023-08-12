## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
makeCacheMatrix <- function(x = matrix()) { ## Create matrix capable of caching its inverse
  inv<- NULL
  set <- function(z){
    x <<- z
    inv<<- NULL
  }
  
  get <- function()x                ## Retrieves matrix x
  setinverse <- function(inverse)inv<<- inverse
  getinverse <- function()inv       ## Function to get inverse of matrix x
  list(set=set, get=get, 
       setinverse=setinverse,
       getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x,...){ ## Get cache data
  inv <-x$getinverse()
  if(!is.null(inv)) {
    message("getting cached result")
    return (inv)
  }
  data <-x$get()
  inv <-solve(data,...)      ## Calculate inverse values of matrix
  x$setinverse(inv)
  inv                        ## Returns matrix that is the inverse of x
}
