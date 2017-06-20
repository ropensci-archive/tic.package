#' Multiplies two numbers
#'
#' Performs multiplication of two integer or numeric scalars.
#'
#' @param x,y Scalar values to multiply
#'
#' @seealso prod
#'
#' @examples
#' multiply(2, 3)
#'
#' @export
multiply <- function(x, y) {
  stopifnot(length(x) == 1)
  stopifnot(length(y) == 1)
  x * y
}
