even_or_odd <- function(s){
  te <- sum(as.numeric(unlist(strsplit(gsub("[^02468]", "", s),''))))
  to <- sum(as.numeric(unlist(strsplit(gsub("[^13579]", "", s),''))))
  if (te == to) return('Even and Odd are the same')
  ifelse(te > to, 'Even is greater than Odd', 'Odd is greater than Even')
}

even_or_odd('123')