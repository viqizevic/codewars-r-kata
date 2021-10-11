stockList <- function(listOfArt, listOfCat) {
  if(length(listOfArt) == 0 || length(listOfCat) == 0) return("")
  artcats <- substr(listOfArt,1,1)
  stocks <- gsub("\\D","", listOfArt) %>% as.numeric
  totals <- sapply(listOfCat, function(c) sum(stocks[c == artcats]))
  paste(listOfCat, totals, sep = " : ") %>% paste('(', ., ')', sep = '') %>% paste0(collapse = ' - ')
}


b = c("BBAR 150", "CDXE 515", "BKWR 250", "BTSQ 890", "DRTY 600", "XRAV 1")
c = c("A", "B", "C", "D")
res = "(A : 0) - (B : 1290) - (C : 515) - (D : 600)"
stockList(b, c) # res