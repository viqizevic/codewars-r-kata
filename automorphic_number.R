automorphic <- function(n) {
  rsq <- n^2 %% 10^nchar(as.character(n))
  ifelse(n == rsq, "Automorphic", "Not!!")
}


automorphic(1)    # --> "Automorphic"
automorphic(3)    # --> "Not!!"
automorphic(25)   # --> "Automorphic"
