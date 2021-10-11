checkChoose <- function(m, n) {
  v <- c(0:n)
  w <- choose(n, v) == m
  ifelse(any(w), v[w][1], -1)
}


checkChoose(6, 4) # --> 2

checkChoose(1, 7) # --> 0
