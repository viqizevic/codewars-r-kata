compute_depth <- function(n, d=0, p=c()) {
  if (length(p) == 10) return(d)
  x <- (n*(d+1)) %>% as.character %>% strsplit('') %>% unlist %>% as.numeric
  compute_depth(n, d+1, unique(c(p, x)))
}


compute_depth(42) # 9

compute_depth(1) # 10
