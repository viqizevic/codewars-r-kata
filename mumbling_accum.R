accum <- function(s){
  z <- unlist(strsplit(s,''))
  mumbling <- function(n) {
    yz <- ""
    for (i in c(1:n)) yz <- paste0(yz, ifelse(1==i,toupper(z[n]),tolower(z[n]))) 
    yz
  }
  1:nchar(s) %>% lapply(mumbling) %>% 
    unlist() %>% paste0(collapse = '-')
}

accum("ZpglnRxqenU")