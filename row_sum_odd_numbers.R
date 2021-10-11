row_sum_odd_numbers <- function(n){
  v <- n^2-(n-1)
  seq(v, (v+(2*(n-1))), 2) %>% sum
}


row_sum_odd_numbers(4)
row_sum_odd_numbers(5)
