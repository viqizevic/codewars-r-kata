get_count <- function(input_str){
  gsub("[^aeiou]", '', x = input_str) %>% 
    nchar
}

get_count("abra")

