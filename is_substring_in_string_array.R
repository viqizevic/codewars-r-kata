inArray <- function(a1, a2) {
  if (length(a1) == 0) return(a1)
  if (length(a2) == 0) return(a2)
  inside <- function(s) any(grepl(s, a2, fixed = TRUE))
  whichin <- unlist(lapply(a1, inside))
  if (any(whichin)) return(sort(unique(a1[whichin])))
  return(NULL)
}


a1 <- c("live", "arp", "strong") 
a2 <- c("lively", "alive", "harp", "sharp", "armstrong")
inArray(a1, a2) # ("arp", "live", "strong")

a1 <- c("ohio", "code", "1346", "1028", "art")
a2 <- c("Carolina", "Ohio", "4600", "NY", "California")
inArray(a1, a2)

