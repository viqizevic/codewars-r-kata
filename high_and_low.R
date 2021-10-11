high_and_low <- function(numbers){
  hl <- strsplit(numbers, split = " ") %>%
    unlist %>% as.numeric
  paste0(c(max(hl), min(hl)), collapse = " ")
}

high_and_low("4 5 29 54 4 0 -214 542 -64 1 -3 6 -6")