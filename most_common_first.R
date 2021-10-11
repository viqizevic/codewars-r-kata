most_common <- function(s){
  x <- s %>% strsplit('') %>% unlist
  cnt <- x %>% as_tibble %>% group_by(value) %>% count(value)
  lvl <- data.frame(value='x', n=0)
  for (i in x) {
    lvl <- rbind(lvl, data.frame(value=i, n=(cnt %>% filter(value == i) %>% .$n)))
  }
  print(lvl)
  lvl %>% mutate(n = as.numeric(n)) %>% arrange(-n) %>% filter(n > 0) %>% .$value %>% paste0(collapse = '')
}

most_common("Hello world") # "lllooHe wrd"
