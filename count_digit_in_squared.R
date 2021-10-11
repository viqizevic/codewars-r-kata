nbDig <- function(n, d) {
  sum <- 0
  for(i in 0:n) {
    j <- as.character(i*i)
    k <- gsub(paste0('[^',d,']'), '', j)
    sum <- sum + nchar(k)
  }
  sum
}


nbDig(5750,0)