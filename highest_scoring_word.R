high <- function(x){
  ls <- function(l) which(letters == l)
  ws <- function(s) strsplit(s,'') %>% unlist %>% lapply(ls) %>% unlist %>% sum
  y <- x %>% strsplit(' ') %>% unlist
  z <- y %>% lapply(ws) %>% unlist
  y[which.max(z)]
}


high('take me to seminyak')