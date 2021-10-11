task <- function(w, n, c) {
  sfmt <- "It is %s today, %s, you have to work, you must spray %i trees and you need %i dollars to buy liquid"
  guys <- c("James", "John", "Robert", "Michael", "William")
  names(guys) = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
  sprintf(sfmt, w, guys[w], n, n*c)
}


task('Wednesday',10,2)