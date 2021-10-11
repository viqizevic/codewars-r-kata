no_odds <- function(values){
  values[which(values %% 2 == 0)]
}


no_odds(c(0, 1, 2, 3))
no_odds(c(1, 3, 5, 7, 9))