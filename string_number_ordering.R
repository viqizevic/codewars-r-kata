your_order <- function(sentence){
  s <- sentence %>% strsplit(' ') %>% unlist
  ord <- gsub("\\D","",s) %>% as.numeric
  names(s) <- ord
  s[order(names(s))] %>% paste0(collapse = ' ')
}


your_order("is2 Thi1s T4est 3a") # "Thi1s is2 3a T4est"
