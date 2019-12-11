#' Get change in life expectancy
#'
#' Given a country calculate the difference in years of life expectancy in 2007 versus 1952
#'
#' @param gap_country character The country of interest. See gapminder::gapminder$country
#'
#' @return numeric
#' @export
#'
#' @importFrom magrittr "%>%"
#'
#' @examples
getDeltaLE2 <- function(gap_country){
  base::stopifnot(is.character(gap_country),
                  length(gap_country) == 1,
                  gap_country %in% gapminder::gapminder$country)

  exp2007 <- gapminder::gapminder %>%
    dplyr::filter(.data$country == gap_country, .data$year == 2007) %>%
    dplyr::select(.data$lifeExp)

  exp1952 <- gapminder::gapminder %>%
    dplyr::filter(.data$country == gap_country, .data$year == 1952) %>%
    dplyr::select(.data$lifeExp)

  return(exp2007$lifeExp - exp1952$lifeExp)
}
