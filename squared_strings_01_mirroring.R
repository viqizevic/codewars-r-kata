vertMirror <- function(s) {
  strsplit(s,'\n') %>% unlist %>% 
    strsplit('') %>% lapply(rev) %>% 
    sapply(paste,collapse='') %>% paste(collapse='\n')
}
horMirror <- function(s) {
  strsplit(s,'\n') %>% unlist %>% rev %>% paste(collapse='\n')
}
oper <- function(f, s) {
  f(s)
}

s <- "abcd\nefgh\nijkl\nmnop"
oper(horMirror, s) #=> "mnop\nijkl\nefgh\nabcd"
oper(vertMirror, s) #=> "dcba\nhgfe\nlkji\nponm"

w <- oper(horMirror, s) #=> "mnop\nijkl\nefgh\nabcd"
oper(vertMirror, w)
