is_prime <- function(n){
  # efficient method is to test whether n is divisible by 2 or 3,
  # then to check through all numbers of the form 6k +- 1 <= ???n
  # This is 3 times faster than testing all numbers up to ???n.
  if (n == 2 || n == 3 ) return(TRUE)
  if (n <= 1 || n %% 2 ==0 || n %% 3 == 0) return(FALSE)
  i <- 5
  while (i*i <= n) {
    if((n %% i) == 0 || (n %% (i+2))==0) return(FALSE)
    i <- i + 6
  }
  return(TRUE)
}


is_prime(998447)