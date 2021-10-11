duplicate_count <- function(text){
  t <- text %>% tolower %>% strsplit('') %>% unlist
  t[duplicated(t)] %>% unique %>% length
}

duplicate_count("abcdeaa") # 1
duplicate_count("Indivisibilities") # 2


