to_camel_case <- function(text){
  # CLEVER: gsub('[-_](.)','\\U\\1',text,perl=T)
  if (nchar(text) == 0) return(text)
  camel <- function(s) paste0(toupper(substr(s,1,1)),substring(s,2))
  v <- gsub("-", "_", text) %>% strsplit('_') %>% unlist
  t <- sapply(tail(v,length(v)-1),camel)
  paste0(c(v[1], t) ,collapse = '')
}

to_camel_case_CLEVER <- function(text){
  gsub('[-_](.)','\\U\\1',text,perl=T)
}


to_camel_case('')                         # --> ''
to_camel_case("the_stealth_warrior")      # --> "theStealthWarrior"
to_camel_case("The-Stealth-Warrior")      # --> "TheStealthWarrior"
to_camel_case("A-B-C")                    # --> "ABC"
to_camel_case("mixed-separator_example")  # --> "mixedSeparatorExample"


to_camel_case_CLEVER("the_stealth_warrior")