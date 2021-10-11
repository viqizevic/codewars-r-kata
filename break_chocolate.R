break_chocolate <- function (n, m) {
  mi <- min(n,m)
  ma <- max(n,m)
  if (mi <= 0 || ma <= 1) return(0)
  if (mi == 1) return(ma-1)
  return(ma-1 + ma * break_chocolate(mi, 1))
}



break_chocolate(1, 1)
break_chocolate(2, 1)
break_chocolate(3, 0)
break_chocolate(5, 5)