#' Test
#'
#' Just a test function
#'
#' @param x a value
#'
#' @return x pasted together
#' @export
#'
#' @examples
#' test_fun(2)
#' test_fun(seq(1, 4))
#' test_fun("Yo!")
test_fun <- function(x) {

  if (missing(x) || is.null(x) || is.na(x)) {
    stop("x must be something!")
  }

  if (is.list(x)) {
    stop("x can't be a list or data frame.")
  }

  if (is.numeric(x)) {
    x <- formatC(x, width = 5, flag = "0")
  }

  x <- paste(x, collapse = ", ")

  message("You entered '", x, "'.")

  x

}
