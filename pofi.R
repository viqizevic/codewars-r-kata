pofi <- function(n){
  # c('1','i','-1','-i')[n%%4+1]
  if (0 == n %% 2) {
    as.character( (-1)^(n/2) )
  } else {
    ifelse(1 == n %% 4, 'i', '-i')
  }
}


pofi(0)
pofi(1)
pofi(2)
pofi(3)
pofi(4)
pofi(5)
pofi(6)
pofi(7)
pofi(8)
pofi(9)