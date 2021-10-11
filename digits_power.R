digPow <- function(n, p) {
  v <- as.character(n) %>% strsplit('') %>% unlist %>% as.numeric
  s <- sum(v**(p + c(0:(length(v)-1))))
  if (s %% n == 0) return(s %/% n)
  -1
}


digPow(89,1)  # 1
digPow(695,2) # 2

