tribonacci <- function(sig, n) {
  len <- length(sig)
  if (len < 3 || len == n) return(sig)
  if (n == 0) return(c())
  if (n <= 3) return(sig[1:n])
  tribonacci(c(sig,sum(tail(sig,3))), n)
}


tribonacci(c(1, 1, 1), 10) # c(1, 1, 1, 3, 5, 9, 17, 31, 57, 105)