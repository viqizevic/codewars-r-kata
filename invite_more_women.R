invite_more_women <- function(l) {
  length(l[l==1]) > length(l[l==-1])
}

invite_more_women(c(1, -1, 1))  # TRUE