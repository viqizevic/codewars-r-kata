howmuch <- function(m, n) {
  x <- c(m:n)
  b <- (x-2) %/% 7
  boats <- (x - (7*b) == 2)
  c <- (x-1) %/% 9
  cars <- (x - (9*c) == 1)
  bc <- boats & cars
  y <- sprintf("[M: %s B: %s C: %s]",x[bc],b[bc],c[bc])
  sprintf("[%s]", paste(y, collapse=""))
}


# "[[M: 1045 B: 149 C: 116]]"
#howmuch(1000, 1100)

howmuch(1, 100)
