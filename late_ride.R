late_ride <- function(n) {
  h <- n %/% 60
  m <- n %% 60
  h %/% 10 + h %% 10 + m %/% 10 + m %% 10
}


late_ride(808) # 14