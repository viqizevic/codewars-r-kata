longestConsec <- function (strarr, k) {
  n <- length(strarr)
  if (k < 1 || k > n || n == 0) return('')
  i <- 1
  res <- strarr
  while (i < k) {
    spc <- rep('',k-i)
    cons <- strarr[(i+1):n]
    res <- paste(res, c(cons,spc), sep = '')
    i <- i+1
  }
  res[which.max(nchar(res))]
}

longestConsec(c("zone", "abigail", "theta", "form", "libe", "zas"), 2)
# abigailtheta

longestConsec(c("zone", "abigail", "theta", "formi", "libe"), 3)