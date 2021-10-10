group_by_commas <- function(n){
  r <- strsplit(sprintf("%d", n), '') %>% unlist %>% rev
  p <- rep_len(c('', '', ','), length.out = length(r)-1)
  paste(r,c('',p), sep = '') %>% rev %>% paste0(collapse = '')
}


group_by_commas(35235235) # '35,235,235'

group_by_commas(100000)