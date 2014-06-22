makeM <- function(x=integer(), nrow=integer()) {
      if(nrow != (max(x)^0.5)) {
            message("error nrow must be square root of n")
      } else {x=matrix(x, nrow)}
      return(x)
}