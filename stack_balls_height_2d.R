stack_height_2d <- function(layers) {
  if (0 == layers) return(0)
  n <- layers-1
  1 + sqrt(n^2 - (n/2)^2)
}


stack_height_2d(1)  # 1
stack_height_2d(2)  # 1.866