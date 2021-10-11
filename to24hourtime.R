to24hourtime <- function(hour, minute, period){
  h <- hour%%12+ifelse(period=='am',0,12)
  sprintf("%02d%02d", h, minute)
}

to24hourtime(1, 0, 'am')
to24hourtime(1, 0, 'pm')
to24hourtime(12, 32, 'am')
to24hourtime(12, 2, 'pm')
