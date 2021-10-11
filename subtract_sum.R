subtract_sum <- function(n) {
  pass <- FALSE
  while (!pass) {
    ss <- as.character(n) %>% strsplit(split='') %>%
      unlist() %>% as.numeric() %>% sum
    n <- n - ss
    if (n <= 100) pass <- TRUE
  }
  c("kiwi","pear","kiwi","banana","melon","banana","melon","pineapple","apple","pineapple","cucumber","pineapple","cucumber","orange","grape","orange","grape","apple","grape","cherry","pear","cherry","pear","kiwi","banana","kiwi","apple","melon","banana","melon","pineapple","melon","pineapple","cucumber","orange","apple","orange","grape","orange","grape","cherry","pear","cherry","pear","apple","pear","kiwi","banana","kiwi","banana","melon","pineapple","melon","apple","cucumber","pineapple","cucumber","orange","cucumber","orange","grape","cherry","apple","cherry","pear","cherry","pear","kiwi","pear","kiwi","banana","apple","banana","melon","pineapple","melon","pineapple","cucumber","pineapple","cucumber","apple","grape","orange","grape","cherry","grape","cherry","pear","cherry","apple","kiwi","banana","kiwi","banana","melon","banana","melon","pineapple","apple","pineapple")[n]
}


subtract_sum(10)
subtract_sum(325)