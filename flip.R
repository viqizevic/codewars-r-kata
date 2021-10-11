flip <- function(d, a){
  if ('R' == d) sort(a)
  else rev(sort(a))
}

flip('R', c(4, 5, 6, 7, 1))
flip('L', c(3, 0, 9, 8, 1, 2))
flip('L', c(0, 0, 12, 0, 1))
flip('R', c(13, 2, 4, 7, 93))
flip('R', c(5, 4, 3, 2, 1))
