duplicate_encode <- function(word){
  w <- word %>% tolower %>% strsplit('') %>% unlist
  dup <- w[duplicated(w)] %>% unique
  d <- w %in% dup
  w[d] <- ")"
  w[!d] <- "("
  w %>% paste0(collapse = '')
}

duplicate_encode("din")      # -> "((("
duplicate_encode("recede")   # -> "()()()"
duplicate_encode("Success")  # -> ")())())"
duplicate_encode("(( @")     # -> "))(("
