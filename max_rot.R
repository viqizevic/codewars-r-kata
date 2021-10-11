max_rot <- function(n) {
  rot <- function(vec, keep) {
    res <- c( vec[(keep+2):length(vec)], vec[keep+1] )
    if (0==keep) res
    else c(vec[1:keep],res)
  }
  v <- as.character(n) %>% strsplit('') %>% unlist
  i <- 0
  basket <- vector(length = length(v))
  basket[1] <- paste0(v, collapse = '') %>% as.numeric
  while (i < length(v)-1) {
    v <- rot(v, i)
    i <- i+1
    basket[i+1] <- paste0(v, collapse = '') %>% as.numeric
  }
  max(basket)
}


max_rot(56789)