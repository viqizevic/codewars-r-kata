digital_root <- function(n){
  if (n %/% 10 == 0) return(n)
  digital_root(sum(as.numeric(unlist(strsplit(as.character(n),'')))))
}


digital_root(16) # 7
digital_root(195) # 6