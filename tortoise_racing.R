race <- function (v1, v2, g) {
  if (v1 >= v2) return(NULL)
  # v1 * h + g = v2 * h
  # g = (v2 - v1) * h
  # h = g / (v2 - v1)
  t <- (60 * 60 * g) %/% (v2 - v1)
  h <- t %/% (60*60)
  m <- t %% (60*60) %/% 60
  s <- t %% (60*60) %% 60
  c(h, m, s)
}


race(820, 81, 550)  # NULL
race(720, 850, 70)  # c(0, 32, 18)
race(572, 622, 551) # c(11, 1, 12)