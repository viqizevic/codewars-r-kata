expand <- function(s){
  strsplit(s, split='') %>% unlist
}

expand("hello")
expand("")