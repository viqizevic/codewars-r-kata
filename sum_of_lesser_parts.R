parts_sum <- function(v) {
  rep(sum(v), length(v)+1) - cumsum(c(0,v))
}


parts_sum(c(0, 1, 3, 6, 10)) # c(20, 20, 19, 16, 10, 0)

parts_sum(c(1, 2, 3, 4, 5, 6)) # c(21, 20, 18, 15, 11, 6, 0)
