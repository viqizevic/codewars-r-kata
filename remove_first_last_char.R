removeFirstLastChar <- function(str){
  substr(str,2,nchar(str)-1)
}


removeFirstLastChar('eloquent')
removeFirstLastChar('country')
removeFirstLastChar('person')
removeFirstLastChar('place')