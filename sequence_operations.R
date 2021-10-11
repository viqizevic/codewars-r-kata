calc <- function(arr) {
  ind1 <- which(arr > 0, arr.ind = TRUE)
  arr[ind1] <- arr[ind1]^2
  ind2 <- which(seq_along(arr) %% 3 == 0, arr.ind = TRUE)
  arr[ind2] <- arr[ind2]*3
  ind3 <- which(seq_along(arr) %% 5 == 0, arr.ind = TRUE)
  arr[ind3] <- arr[ind3]*(-1)
  sum(arr)
}



calc(c(0, 2, 1, -6, -3, 3)) # --> 31