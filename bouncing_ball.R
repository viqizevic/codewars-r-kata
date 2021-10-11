bouncingBall <- function(h, bounce, window) {
  if (h <= 0 || bounce <= 0 || 1 <= bounce || h <= window) return(-1)
  # h * b ^ k > w
  #     b ^ k > w/h
  # k * ln(b) > ln(w/h)
  # k > ln(w/h)/ln(b)
  f <- log(window/h)/log(bounce)
  ifelse(f == 1, 1, 1+2*floor(f))
}

bouncingBall(3.0, 0.66, 1.5) # 3

bouncingBall(30.0, 0.66, 1.5) # 15

bouncingBall(2.0, 0.5, 1) # 1
