sumin <- function(n) {
  # CLEVER: sum(as.numeric(outer(1:n,1:n,pmin)))
  s <- 0
  for (i in 1:n) { s <- s + sum(pmin(c(1:n),i)) }
  s
}

sumax <- function(n) {
  # CLEVER: sum(as.numeric(outer(1:n,1:n,pmax)))
  s <- 0
  for (i in 1:n) { s <- s + sum(pmax(c(1:n),i)) }
  s
}

sumsum <- function(n) {
  sumin(n) + sumax(n)
}


sumin(6) #--> 91
sumin(45) #--> 31395
sumin(999) #--> 332833500
sumin(5000) #--> 41679167500