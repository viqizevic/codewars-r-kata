easy_line <- function(n) {
  choose(n, c(0:n)) ** 2 %>%
    sum %>% log %>% round
}

easy_line(4)