get_middle <- function(s){
  m <- nchar(s) %/% 2
  mr <- nchar(s) %% 2
  ss <- unlist(strsplit(s, ''))
  paste0(ss[m+mr], ifelse(1==mr, "", ss[m+1]))
}

get_middle("testing")
get_middle("middle")