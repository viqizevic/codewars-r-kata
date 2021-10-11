vertMirror <- function(s) {
  strsplit(s,'\n') %>% unlist %>% 
    strsplit('') %>% lapply(rev) %>% 
    sapply(paste,collapse='') %>% paste(collapse='\n')
}
horMirror <- function(s) {
  strsplit(s,'\n') %>% unlist %>% rev %>% paste(collapse='\n')
}
rot <- function(s) {
  vertMirror(horMirror(s))
}
selfieAndRot <- function(s) {
  len <- nchar(gsub("[^\n]", "", s))+1
  dots <- rep_len('.', length.out = len) %>% paste0(collapse = '')
  p1 <- gsub("\n", paste0(dots,"\n"), s)
  p2 <- gsub("\n", paste0("\n",dots), rot(s))
  paste0(p1, paste0(dots,"\n", dots), p2)
}
oper <- function(f, s) {
  f(s)
}



oper(rot, "fijuoo\nCqYVct\nDrPmMJ\nerfpBA\nkWjFUG\nCVUfyL")
# "LyfUVC\nGUFjWk\nABpfre\nJMmPrD\ntcVYqC\nooujif"

oper(selfieAndRot, "xZBV\njsbS\nJcpN\nfVnP")
# "xZBV....\njsbS....\nJcpN....\nfVnP....\n....PnVf\n....NpcJ\n....Sbsj\n....VBZx")