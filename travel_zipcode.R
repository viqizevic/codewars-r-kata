travel <- function (r, zipcode) {
  ad0 <- strsplit(r, ",\\s*") %>% unlist
  pt <- paste0("^(\\d+) (.*) ", zipcode, "$")
  ad0 <- regmatches(ad0, regexpr(pt, ad0, perl = TRUE))
  adn <- gsub(pt, "\\1", ad0) %>% paste0(collapse = ',')
  ads <- gsub(pt, "\\2", ad0) %>% paste0(collapse = ',')
  sprintf("%s:%s/%s", zipcode, ads, adn)
}


travel_1stTry <- function (r, zipcode) {
  ad0 <- strsplit(r, ",\\s*") %>% unlist
  zs <- gsub(".* ([A-Z]{2} \\d+)$", "\\1", ad0)
  adn <- gsub("^(\\d+) .* [A-Z]{2} \\d+$", "\\1", ad0)
  ads <- gsub("^\\d+ (.*) [A-Z]{2} \\d+$", "\\1", ad0)
  n <- adn[zipcode == zs] %>% paste0(collapse = ',')
  s <- ads[zipcode == zs] %>% paste0(collapse = ',')
  sprintf("%s:%s/%s", zipcode, s, n)
}

ad <- "123 Main Street St. Louisville OH 43071,432 Main Long Road St. Louisville OH 43071,786 High Street Pollocksville NY 56432,
54 Holy Grail Street Niagara Town ZP 32908,3200 Main Rd. Bern AE 56210,1 Gordon St. Atlanta RE 13000,
10 Pussy Cat Rd. Chicago EX 34342,10 Gordon St. Atlanta RE 13000,58 Gordon Road Atlanta RE 13000,
22 Tokyo Av. Tedmondville SW 43098,674 Paris bd. Abbeville AA 45521,10 Surta Alley Goodtown GG 30654,
45 Holy Grail Al. Niagara Town ZP 32908,320 Main Al. Bern AE 56210,14 Gordon Park Atlanta RE 13000,
100 Pussy Cat Rd. Chicago EX 34342,2 Gordon St. Atlanta RE 13000,5 Gordon Road Atlanta RE 13000,
2200 Tokyo Av. Tedmondville SW 43098,67 Paris St. Abbeville AA 45521,11 Surta Avenue Goodtown GG 30654,
45 Holy Grail Al. Niagara Town ZP 32918,320 Main Al. Bern AE 56215,14 Gordon Park Atlanta RE 13200,
100 Pussy Cat Rd. Chicago EX 34345,2 Gordon St. Atlanta RE 13222,5 Gordon Road Atlanta RE 13001,
2200 Tokyo Av. Tedmondville SW 43198,67 Paris St. Abbeville AA 45522,11 Surta Avenue Goodville GG 30655,
2222 Tokyo Av. Tedmondville SW 43198,670 Paris St. Abbeville AA 45522,114 Surta Avenue Goodville GG 30655,
2 Holy Grail Street Niagara Town ZP 32908,3 Main Rd. Bern AE 56210,77 Gordon St. Atlanta RE 13000"

travel(ad, "AA 45522")
# "AA 45522:Paris St. Abbeville,Paris St. Abbeville/67,670"
#travel(ad, "OH 430") # "OH 430:/"
       