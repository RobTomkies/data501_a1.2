#' asmd
#'
#' @param numbers Input vector of numbers to add together, subtract from 0, multiply together or divide 1 by
#'
#' @return Returns 4 componants, add, divide, multiple and subtract that contain the return values
#' @keywords mathematics
#' @export
#'
#' @examples asmd(c(1,2,3,4,5))
asmd <- function(numbers){
  add_start <- 0
  subtract_start <- 0
  multiply_start <- 1
  divide_start <- 1
  for(i in numbers){
    add_start <- add_start + i
  }
  for(i in numbers){
    subtract_start <- subtract_start - i
  }
  for(i in numbers){
    multiply_start <- multiply_start * i
  }
  for(i in numbers){
    if(i == 0){
      print("skipping over 0 to avoid error")
      divide_start <- divide_start
    }
    else{
      divide_start <- divide_start / i
    }

  }
  results <- list(add = add_start, subtract = subtract_start, multiply = multiply_start, divide = divide_start )
  return(results)
}

