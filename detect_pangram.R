is_pangram <- function(s){
  l <- tolower(s) %>% gsub("[^a-z]","",.) %>% strsplit('') %>% unlist %>% unique %>% sort
  #length(l) == 26
  all(letters %in% l)
}

is_pangram("The quick, brown fox jumps over the lazy dog!")