#' mean_variety
#'
#' @param numbers Input vector of numbers to determine the different means of.
#'
#' @return Returns 3 componants, the harmonic mean (harmonic_mean), the geometric mean (geometric_mean) and the standard mean (standard_mean)
#' @keywords mean
#' @export
#'
#' @examples mean_variety(numbers = c(1,2,3,4,5))
mean_variety <- function(numbers){
  geo <- psych::geometric.mean(numbers)
  harm <- psych::harmonic.mean(numbers)
  standard <- mean(numbers)
  results <- list(harmonic_mean = harm, geometric_mean = geo, standard_mean = standard)
  return(results)
}

