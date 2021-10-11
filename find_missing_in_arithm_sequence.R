find_missing <- function(sequence){
  diff <- diff(sequence)
  sequence[which.max(diff)] + min(diff)
}


find_missing(c(1, 2, 3, 4, 6, 7, 8, 9)) # --> 5