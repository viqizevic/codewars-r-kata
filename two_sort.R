two_sort <- function(s){
  sort(s, method='radix')[1] %>% strsplit('') %>% unlist %>% paste0(collapse = '***')
}

two_sort(c("Lets", "all", "go", "on", "holiday", "somewhere", "very", "cold"))
# 'L***e***t***s'