#' first 100 primes
#'
#' @param number Number to check if its in the first 100 primes
#'
#' @return Boolean response True if the number provided is in the first 100 prime numbers
#' @export
#'
#' @examples in_first_100_primes(number = 15)
in_first_100_primes <- function(number){
  primes <- data(primes)

  return(number %in% primes)
}
