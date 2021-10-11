balance <- function(book) {
  b0 <- book %>% strsplit('\n') %>% unlist %>% gsub("[^A-Za-z0-9 .]",'',.) %>% 
    gsub("\\s+",' ',.) %>% trimws
  get_cost <- function(r) rev(unlist(strsplit(r,' ')))[1]
  b1 <- b0 %>% lapply(., get_cost) %>% unlist %>% as.numeric
  exp_ind <- c(2:length(b1))
  exp <- b1[exp_ind]
  ori <- b1[1]
  blnc <- cumsum(c(ori, -1*exp))
  init <- paste("Original Balance:", sprintf("%.2f",ori), sep = ' ')
  tot <- paste("Total expense", sprintf("%.2f",sum(exp)), sep = '  ')
  n <- length(exp)
  avg <- round((ori-blnc[n+1])/n, digits = 2)
  avgt <- paste("Average expense", sprintf("%.2f",avg), sep = '  ')
  partb <- paste(b0[exp_ind], "Balance", sprintf("%.2f",blnc[exp_ind]), sep=' ', collapse = '\n')
  paste(init, partb, tot, avgt, sep = '\n')
}




b1 = "1000.00!=\n125 Market !=:125.45\n126 Hardware =34.95\n127 Video! 7.45\n128 Book :14.32\n129 Gasoline ::16.10"

b2 = paste0("1233.00\n125 Hardware;! 24.80?\n123 Flowers 93.50;\n127 Meat 120.90\n120 Picture 34.00\n124 Gasoline 11.00\n",
            "123 Photos;! 71.40?\n122 Picture 93.50\n132 Tyres;! 19.00,?;\n129 Stamps; 13.60\n129 Fruits{} 17.60\n129 Market;! 128.00?\n121 Gasoline;! 13.60?")

b3 = "1061
125 Vegetables ;! 19.00 ?;
122 Pen ;! 34.00 ?;
121 Books ;! 110.73 ?;
122 Car ;! 17.50 ?;
124 Gasoline ;! 17.60 ?;
121 Flowers ;! 34.00 ?;"

balance(b3)

