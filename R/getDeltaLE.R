#' Get Delta in Life Exp
#'
#' Uses the gapminder data set to...
#'
#' @param gap_country character, a country. See gapminder::gapminder$title
#'
#' @return numeric vector
#' @export
#'
#' @examples
getDeltaLE <- function(gap_country){

  exp2007 <- gapminder::gapminder %>%
    dplyr::filter(.data$country == gap_country, .data$year == 2007) %>%
    dplyr::select(.data$lifeExp)

  exp1952 <- gapminder::gapminder %>%
    dplyr::filter(.data$country == gap_country, .data$year == 1952) %>%
    dplyr::select(.data$lifeExp)
  return(exp2007$lifeExp - exp1952$lifeExp)
}

## quiets concerns of R CMD check re: the .'s that appear in pipelines
if(getRversion() >= "2.15.1")  utils::globalVariables(c(".data", "%>%"))
