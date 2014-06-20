## Programming Assignment 2
## Caching the inverse of a Matrix

## Creates matrix and uses "<<-" operator to store a copy in cache.


      get <- function() x
      setmean <- function(mean) m <<- mean
      getmean <- function() m
      list(set = set, get = get,
           setmean = setmean,
           getmean = getmean)
}

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x

## Checks cache first before returning inverse matrix of x.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
