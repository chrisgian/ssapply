# selective sapply
# Quickly transform groups of columns
# todo: add non-consecutive indexing of columns

ssapply <- function(x, # data.frame
                    ... ,  # inherit arguments from sapply
                    start = 1, # selective apply start column index
                    end = 2){  # selective apply end column index
  
  order_retain <- names(x) # retain order of columns
  a <- x[-(start:end)] # non-select
  b <- x[(start:end)]  # select
  c <- sapply(b,...)   # apply function to selected
  out <- cbind(a,c)    # bind
  out[order_retain]    # bind with order
  }