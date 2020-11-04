
#' Get pantheria data
#'
#' @return data.frame with info on ecoregions
#' @export
#'
data_pantheria <- function() {

  readr::read_csv(here::here("data", "pantheria-traits", "PanTHERIA_1-0_WR05_Aug2008.txt"))

}


