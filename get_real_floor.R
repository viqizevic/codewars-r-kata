get_real_floor <- function(n){
  if (n <= 0) n
  else if (n < 13) n-1
  else n-2
}

get_real_floor(1)

get_real_floor(0)

get_real_floor(5)

get_real_floor(12)

get_real_floor(14)

get_real_floor(19)
