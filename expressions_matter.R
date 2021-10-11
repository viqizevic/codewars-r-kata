expressionsMatter <- function(a,b,c) {
  c(
    a + b + c,
    a + b * c,
   (a + b)* c,
    a * b + c,
    a *(b + c),
    a * b * c
  ) %>% max
}

expressionsMatter(1,2,3)