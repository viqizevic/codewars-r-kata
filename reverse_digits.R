digitize <- function(n){
  as.character(n) %>% 
    strsplit(split='') %>%
    unlist() %>% 
    rev() %>% 
    as.numeric()
}


digitize(35231)
digitize(23582357)
digitize(984764738)
digitize(45762893920)
digitize(548702838394)
digitize(0)