x <- sprintf("%05d",c(0:99999))
hmd5 <- openssl::md5(x)

crack <- function(hash) {
  x[hmd5 == hash]
}

crack("5124026d6fde41bba5fbe3c317642f7b")