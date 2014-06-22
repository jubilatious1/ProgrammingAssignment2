## Programming Assignment 2
## Caching the inverse of a Matrix

## Creates matrix and uses "<<-" operator to store a copy in cache.
makeCacheMatrix <- function(x=matrix()) {
      m <- NULL    
      set <- function(y=integer()) {
            ##ask for side of square matrix
            y <- matrix(seq(1, y), nrow=y)
            ##if(nrow != (max(y)^0.5)) {
                  ##message("error nrow must be square root of n")
            ##} else {y=matrix(y, nrow)}
            return(y)
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setsolve <- function(solve) m <<- solve
      getsolve <- function() m
      list(set = set, get = get,
           setsolve = setsolve,
           getsolve = getsolve)
}

## Checks cache first before returning inverse matrix of x.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
            m <- x$getsolve()
            if(!is.null(m)) {
                  message("getting cached data")
                  return(m)
            }
            data <- x$get()
            m <- solve(data, ...)
            x$setsolve(m)
            m
      }
