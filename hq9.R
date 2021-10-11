hq9 <- function( code ) {
  if (code == 'H') return("Hello World!")
  if (code == 'Q') return(code)
  if (code == '9') {
    b1 <- function(n) {
      ncurrent2 <- ifelse(n>=1, n, "no more")
      ncurrent1 <- ifelse(ncurrent2 == n, n, "No more")
      btl <- ifelse(n==1, "bottle", "bottles")
      l1 <- paste(ncurrent1, btl, "of beer on the wall,", ncurrent2, btl, "of beer.")
      donext <- ifelse(n>0, "Take one down and pass it around,", "Go to the store and buy some more,")
      nleft <- ifelse(n>1, n-1, ifelse(n==1,"no more", 99) )
      btl <- ifelse(nleft==1, "bottle", "bottles")
      l2 <- paste(donext, nleft, btl, "of beer on the wall.")
      paste0(l1,'\n',l2)
    }
    bl <- 99:0 %>% 
      map(b1) %>% 
      paste0(collapse = '\n')
    return(bl)
  }
  return(NA)
}

hq9( 'H' )
hq9( 'Q' )
hq9( '9' )