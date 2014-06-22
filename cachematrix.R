## Programming Assignment 2
## Caching the inverse of a Matrix
##Two example files have been combined.
## Input is matrix and uses "<<-" operator to store a copy in cache.
##Grep 'mean' and replace with 'solve'

makeCacheMatrix <- function(numeric(x)) {
      m <- NULL
      set <- function(y) {
            x <<- matrix(y)
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
