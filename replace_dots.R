replace_dots <- function(s){
  gsub("\\.", "-", s)
}


replace_dots("")
replace_dots("no dots")
replace_dots("one.two.three")
replace_dots("........")