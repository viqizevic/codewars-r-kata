rank <- function(st, we, n) {
  if (st == "") return("No participants")
  s <- st %>% strsplit(',') %>% unlist
  if (n > length(s)) return("Not enough participants")
  sumletters <- function(name) name %>% tolower %>% strsplit('') %>% unlist %>% match(letters) %>% sum
  sw <- (nchar(s) + sapply(s, sumletters)) * we
  res <- sw[order(names(sw))] %>% sort(decreasing = TRUE)
  names(res[n])
}

rank("Addison,Jayden,Sofia,Michael,Andrew,Lily,Benjamin", c(4, 2, 1, 4, 3, 1, 2), 4)   # => Benjamin
rank("Elijah,Chloe,Elizabeth,Matthew,Natalie,Jayden", c(1, 3, 5, 5, 3, 6), 2)   # => Matthew
rank("Aubrey,Olivai,Abigail,Chloe,Andrew,Elizabeth", c(3, 1, 4, 4, 3, 2), 4)   # => Abigail
rank("Lagon,Lily", c(1, 5), 2)   # => Lagon
rank("William,Willaim,Olivia,Olivai,Lily,Lyli", c(1, 1, 1, 1, 1, 1), 1)   # => Willaim