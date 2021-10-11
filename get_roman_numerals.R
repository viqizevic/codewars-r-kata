solution <- function(n){
  str <- "M2D5C2L5X2V5I" %>% strsplit('') %>% unlist
  res <- ""
  j <- 1
  v <- 1000
  while (TRUE) {
    while (n >= v) {
      res <- paste0(res, str[j], collapse = '')
      n <- n - v
    }
    if (n <= 0) return(res)
    k <- j + 2
    u <- v / as.numeric(str[k-1])
    if (str[k-1] == '2') {
      k <- k + 2
      u <- u / as.numeric(str[k-1])
    }
    if (n + u >= v) {
      res <- paste0(res, str[k], collapse = '')
      n <- n + u
    } else {
      j <- j + 2
      v <- v / as.numeric(str[j-1])
    }
  }
}


solution(2009)
solution(2078)