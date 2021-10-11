find_longest <- function(arr) {
  arr[which(nchar(arr) == max(nchar(arr)))][1]
  # CLEVER: arr[which.max(nchar(arr))]
}


find_longest(c(1, 10, 100))
find_longest(c(9000, 8, 800))
find_longest(c(8, 900, 500))
find_longest(c(3, 40000, 100))
find_longest(c(1, 200, 100000))