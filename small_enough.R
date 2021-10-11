small_enough <- function(vector, limit) {
  max(vector) <= limit
}


small_enough(c(66, 101), 200)
small_enough(c(78, 117, 110, 99, 104, 117, 107, 115), 100)