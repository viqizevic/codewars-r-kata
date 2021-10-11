reverse_words <- function(sentence){
  strsplit(sentence, ' ') %>% 
    unlist %>% 
    rev %>% 
    paste(collapse = ' ')
}

reverse_words("hello world!")
reverse_words("yoda doesn't speak like this")
reverse_words("foobar")
reverse_words("kata editor")
reverse_words("row row row your boat")