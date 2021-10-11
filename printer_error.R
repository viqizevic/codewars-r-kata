printer_error <- function(s) {
  paste(nchar(gsub("[a-m]",'',s)), nchar(s), sep = '/')
}

s <- "aaabbbbhaijjjm"
printer_error(s)# => "0/14"

s <- "aaaxbbbbyyhwawiwjjjwwm"
printer_error(s)# => "8/22"