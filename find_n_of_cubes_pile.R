findNb <- function(n) {
  # n   = k^2 (k+1)^2 / 4
  # 4*n = k^2 (k+1)^2
  # 2*sq(n) = k*(k+1)
  # k^2 <    2*sq(n)  < (k+1)^2
  # k   < sq(2*sq(n)) < k+1
  k <- floor(sqrt(2*sqrt(n)))
  ifelse(2*sqrt(n) == k*(k+1), k, -1)
}


findNb(1071225) #--> 45

findNb(91716553919377) #--> -1