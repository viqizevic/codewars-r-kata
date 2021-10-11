max_multiple <- function(divisor, bound) {
  ns <- c(bound:1)
  nid <- which(ns %% divisor == 0, arr.ind = TRUE)[1]
  ns[nid]
}


max_multiple(3, 10)
max_multiple(37, 200)