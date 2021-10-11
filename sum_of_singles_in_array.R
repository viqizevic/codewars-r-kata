repeats <- function(arr){
  arr[!(arr %in% arr[duplicated(arr)])] %>% sum
}

repeats(c(9, 10, 19, 13, 19, 13)) # --> 19
