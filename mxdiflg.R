mxdiflg <-  function(a1, a2) {
  if (length(a1)==0 || length(a2)==0) return(-1)
  x <- min(nchar(a1)) - max(nchar(a2))
  y <- min(nchar(a2)) - max(nchar(a1))
  max(abs(x), abs(y))
}

s1 <- c("hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz")
s2 <- c("cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww")
mxdiflg(s1, s2)