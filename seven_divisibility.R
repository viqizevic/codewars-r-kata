seven <- function(m, step=0) {
  if (m < 100) return(c(m, step))
  seven(m %/% 10 - 2*(m %% 10), step+1)
}


seven_1st_try <- function(m, step=0) {
  num <- as.character(m)
  n <- nchar(num)
  if (2 >= n) return(c(m, step))
  x <- as.numeric(substr(num,1,n-1))
  y <- as.numeric(substr(num,n,n))
  seven(x - 2*y, step+1)
}



seven(371) # => c(35, 1))
seven(1021) # => c(10, 2))
seven(477557101) # => c(28, 7))
seven(477557102) # => c(47, 7))