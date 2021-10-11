find_dup <- function(arr){
  arr[duplicated(arr)]
}


find_dup(c(1,1,2,3))            # --> 1
find_dup(c(1,2,2,3))            # --> 2
find_dup(c(5,4,3,2,1,1))        # --> 1
find_dup(c(1,3,2,5,4,5,7,6))    # --> 5
find_dup(c(8,2,6,3,7,2,5,1,4))  # --> 2
