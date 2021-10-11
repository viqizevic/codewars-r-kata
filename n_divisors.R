divisors <- function(n) {
  sum(n %% c(1:n) == 0)
}

divisors(30)