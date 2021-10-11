containAllRots <- function(s, arr) {
  # CLEVER
  n <- nchar(s)
  srots <- c(s, paste(substring(s, 2:n), substring(s, 1, 1:(n - 1)), sep = ""))
  all(srots %in% arr)
}

containAllRots_v0 <- function(s, arr) {
  n <- nchar(s)
  if (0 == n) return(TRUE)
  if (1 == n) return(s %in% arr)
  if (!(s %in% arr)) return(FALSE)
  for (i in 2:n) {
    u <- substr(s,1,n+1-i)
    v <- substr(s,n+2-i,n)
    vu <- paste0(v,u,'')
    if (!(vu %in% arr)) return(FALSE)
  }
  return(TRUE)
}





containAllRots("bsjq", c("bsjq", "qbsj", "sjqb", "twZNsslC", "jqbs"))
containAllRots("XjYABhR", c("TzYxlgfnhf", "yqVAuoLjMLy", "BhRXjYA", "YABhRXj", "hRXjYAB", "jYABhRX", "XjYABhR", "ABhRXjY"))
