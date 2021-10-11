movie <- function(card, ticket, perc, time=10) {
  # card + t * (p - p**(n+1)) / (1 - p) - t < t*n
  n <- c(1:time)
  # CLEVER: min(which(ceiling(card + ticket * cumsum(perc^n)) < ticket * n))
  cheaper <- card + ceiling(ticket*(perc - perc**(n+1))/(1-perc)) < n*ticket
  if(any(cheaper)) return(which(cheaper)[1])
  else return(movie(card, ticket, perc, time*10))
}


movie(500, 15, 0.9) # should return 43 
# (with card the total price is 634, with tickets 645)

movie(100, 10, 0.95) # should return 24 
# (with card the total price is 235, with tickets 240)