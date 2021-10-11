words_to_marks <- function(s){
  # CLEVER: sum(match(unlist(strsplit(s, "")), letters))
  # CLEVER: sum(utf8ToInt(s) - utf8ToInt("a") + 1)
  letter2number <- function(x) {utf8ToInt(x) - utf8ToInt("a") + 1L}
  strsplit(s, split = '') %>% unlist %>%
    lapply(letter2number) %>% unlist %>% sum
}

words_to_marks('friends')