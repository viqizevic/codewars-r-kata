array_diff = function(a, b) {
  a[!(a %in% b)]
}


array_diff(c(1, 2), 1) # 2
array_diff(c(1, 2, 3), c(1, 2)) # 3