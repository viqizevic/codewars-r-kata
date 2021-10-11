odd_ones_out <- function(numbers){
  c <- function(a) return(sum(numbers == a) %% 2 == 0)
  u <- unique(numbers)
  v <- u[lapply(u, c) %>% unlist]
  numbers[numbers %in% v]
}

odd_ones_out_USING_LOOP <- function(numbers){
  u <- unique(numbers)
  v <- c()
  for(i in 1:length(u)) {
    if (sum(numbers == u[i]) %% 2 == 0) v <- append(v, u[i])
  }
  numbers[numbers %in% v]
}


odd_ones_out(c(1,2,2,3,1,3,3))