makeValley <- function(arr) {
  len <- length(arr)
  v <- sort(arr, decreasing = TRUE)
  if (len <= 2) return(v)
  c(v[1], makeValley(v[3:len]), v[2])
}

makeValley(c(14, 18))
makeValley(c(14, 10, 8)) # --> c(14, 8, 10))
makeValley(c(20, 7, 6, 2)) # --> c(20, 6, 2, 7))
makeValley(c(17, 17, 15, 14, 8, 7, 7, 5, 4, 4, 1)) # --> c(17, 15, 8, 7, 4, 1, 4, 5, 7, 14, 17))

