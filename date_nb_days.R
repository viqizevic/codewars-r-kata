dateNbDays <- function (a0, a, p, d="2016-01-01", days=100) {
  res <- a0*((1+p/(100*360))^c(1:days))
  if (any(res >= a)) return(as.character(as.Date(d) + which(res >= a)[1]))
  dateNbDays(a0, a, p, d, days*10)
}


dateNbDays(100, 101, 0.98)  #--> "2017-01-01" (366 days)
dateNbDays(100, 150, 2.00) #--> "2035-12-26" (7299 days)
dateNbDays(10000, 15000, 4)