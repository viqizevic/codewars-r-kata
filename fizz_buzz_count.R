solution <- function(n){
  v <- c(1:(n-1))
  m35 <- v[(v%%3==0) & (v%%5==0)]
  m3n5 <- v[(v%%3==0) & (v%%5!=0)]
  m5n3 <- v[(v%%3!=0) & (v%%5==0)]
  c(length(m3n5), length(m5n3), length(m35))
}

solution(20)