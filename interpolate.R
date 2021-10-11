interp <- function(FUN, l, u , n) {
  y <- lapply(l+c(1:n)*((u-l)/n), FUN) %>% unlist
  floor(y * 100)/100
}



interp(function(x) x, 0, 9.0, 4)  # c(0.0, 2.25, 4.5, 6.75)