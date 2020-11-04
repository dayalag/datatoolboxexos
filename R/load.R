#' Import WWF Wildfinder species data
#'
#' @return A tibble containing species IDs and taxonomic info
#' @export
#' @importFrom readr read_csv
#' @importFrom here here
#'
data_sp_list  <- function() {
  readr::read_csv(
    here::here("data","wwf-wildfinder","wildfinder-mammals_list.csv")
  )
}

#' Import WWF Wildfinder ecoregions data
#'
#' @return A tibble containing ecoregions IDs and geographic info
#' @export
#' @importFrom readr read_csv
#' @importFrom here here
#'
data_eco_list <- function() {
  readr::read_csv(
    here::here("data","wwf-wildfinder","wildfinder-ecoregions_list.csv")
  )
}

#' Import WWF Wildfinder species-ecoregions data
#'
#' @return A 2 columns tibble linking species IDs to ecoregions IDs
#' @export
#' @importFrom readr read_csv
#' @importFrom here here
#'
data_sp_eco   <- function() {
  readr::read_csv(
    here::here("data","wwf-wildfinder","wildfinder-ecoregions_species.csv")
  )
}


#' Import pantheria data
#'
#' @return A 2 columns tibble linking species IDs to ecoregions IDs
#' @export
#' @importFrom readr read_csv
#' @importFrom here here
#'
data_pantheria   <- function() {
  readr::read_delim(
    here::here("data","pantheria-traits","PanTHERIA_1-0_WR05_Aug2008.txt"),
    delim = "\t")
}
