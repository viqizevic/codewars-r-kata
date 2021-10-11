vertMirror <- function(s) {
  strsplit(s,'\n') %>% unlist %>% 
    strsplit('') %>% lapply(rev) %>% 
    sapply(paste,collapse='') %>% paste(collapse='\n')
}
rot90Clock <- function (s) {
  vertMirror(diag1Sym(s))
}
diag1Sym <- function(s) {
  n <- nchar(gsub("[^\n]", "", s))+1
  x <- strsplit(gsub("\n", "", s),'') %>% unlist
  v <- (seq_along(x)-1) %% n
  res <- "";
  for (k in 0:(n-1)) {
    res <- paste(res, paste0(x[v==k], collapse = ''), sep=ifelse(res=="","", "\n"))
  }
  res
}
selfieAndDiag1 <- function(s) {
  x <- strsplit(s, "\n") %>% unlist
  y <- strsplit(diag1Sym(s), "\n") %>% unlist
  paste(x, y, sep = "|", collapse = "\n")
}
oper <- function(f, s) {
  f(s)
}



oper(rot90Clock, "rgavce\nvGcEKl\ndChZVW\nxNWgXR\niJBYDO\nSdmEKb")
# "Sixdvr\ndJNCGg\nmBWhca\nEYgZEv\nKDXVKc\nbORWle")
oper(diag1Sym, "wuUyPC\neNHWxw\nehifmi\ntBTlFI\nvWNpdv\nIFkGjZ")
# "weetvI\nuNhBWF\nUHiTNk\nyWflpG\nPxmFdj\nCwiIvZ")
oper(selfieAndDiag1, "NJVGhr\nMObsvw\ntPhCtl\nsoEnhi\nrtQRLK\nzjliWg")
# "NJVGhr|NMtsrz\nMObsvw|JOPotj\ntPhCtl|VbhEQl\nsoEnhi|GsCnRi\nrtQRLK|hvthLW\nzjliWg|rwliKg")
