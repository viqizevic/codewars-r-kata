xo <- function(s){
  exes <- gsub("[^x]", "", s, ignore.case = TRUE)
  ohs <- gsub("[^o]", "", s, ignore.case = TRUE)
  nchar(exes) == nchar(ohs)
}



xo("xxxoo")