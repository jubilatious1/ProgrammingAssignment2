makeVector <- function(x = numeric()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setsolve <- function(solve) m <<- solve
      getsolve <- function() m
      list(set = set, get = get,
           setsolve = setsolve,
           getsolve = getsolve)
      cachesolve <- function(x, ...) {
            m <- x$getsolve()
            if (is.null(m)) {
                  data <- x$get()
                  m    <- solve(data, ...)
                  x$setsolve(m)
            } else {  ##  [optional] tell learner about source of returned value
                  message('using cached value')
            }
            m
      }      
}
