
#' Extract ursidae
#'
#' @param spdata The data containing all species
#'
#' @return A tibble only containing ursidae
#' @export
#' @importFrom dplyr filter
#' @importFrom dplyr select
#'
#' @examples
extract_ursidae <- function(spdata) {
  ## Sélection des espèces
  spdata %>%
    dplyr::filter(family   == "Ursidae") %>%      # Sélection des Ursidés
    dplyr::filter(sci_name != "Ursus malayanus") %>%   # Suppression du synonyme
    dplyr::select(species_id, sci_name, common)        # Sélection de colonnes
}

