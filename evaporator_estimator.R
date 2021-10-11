evaporator <- function(content, evap_per_day, threshold, maxday=10) {
  days <- c(1:maxday)
  availables <- 100*sign(days)*(1-evap_per_day/100) ** days
  if (any(availables < threshold)) return(which(availables < threshold)[1])
  else return(evaporator(content, evap_per_day, threshold, maxday*10))
}


evaporator_plain <- function(content, evap_per_day, threshold) {
  # PLAIN version, using while loop
  available <- 100
  k <- 0
  while(threshold < available) {
    available <- available - available*evap_per_day/100
    k <- k + 1
  }
  k
}




evaporator(10, 10, 10)
evaporator(10, 10, 5)