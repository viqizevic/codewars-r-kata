squaresInRect <- function(lng, wd, sol=c()) {
  if (lng == wd) {
    if (length(sol) == 0) return(NULL)
    else return(c(sol, wd))
  }
  x <- min(lng, wd)
  squaresInRect(x, max(lng, wd) - x, c(sol, x))
}
squaresInRect(3,5)