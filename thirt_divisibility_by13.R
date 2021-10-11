thirt <- function (n) {
  v <- as.character(n) %>% strsplit('') %>% unlist %>% as.numeric %>% rev
  r <- rep(c(1,10,9,12,3,4), times=1, length.out=length(v))
  s <- sum(r*v)
  if (s == n) return(n)
  thirt(s)
}



thirt(48) # 48
thirt(321) # 48

thirt(1234567) # 87
thirt(85299258) # 31