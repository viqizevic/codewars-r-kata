solution <- function(s){
  # sapply(lapply(strsplit(s, split=''), rev), paste, collapse = '')
  strsplit(s, split='') %>%
    unlist() %>% 
    rev() %>% 
    paste(collapse = '')
}


solution('world')
solution('hello')
solution('')
solution('h')