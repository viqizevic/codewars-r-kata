maxBall <- function (v0, t0=0, h0=0) {
  t1 <- t0 + 0.1
  h1 <- v0*(1000/3600)*t1 - (0.5*9.81*t1*t1)
  ifelse(h0 >= h1, t0*10, maxBall(v0, t1, h1))
}
# return time in tenth of second


maxBall(37) # 10
maxBall(15) # 4