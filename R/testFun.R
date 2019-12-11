#' Make a binary factor
#'
#' Create a factor vector of n elements, labeled A and B.
#'
#' @param n integer
#'
#' @return factor
#' @export
#'
#' @examples
#' testFun(76)
testFun <- function(n) {
  factor(
    sample(
      0:1, n, TRUE
    ),
    labels = LETTERS[1:2]
  )
}
