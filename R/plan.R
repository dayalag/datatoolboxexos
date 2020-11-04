#' Write basic plan
#'
#' @return A drake plan
#' @export
#'
#' @importFrom drake drake_plan
#'
#' @examples
write_plan <- function() {
  drake::drake_plan(
    eco_list = data_eco_list(),
    sp_eco = data_sp_eco(),
    sp_list = data_sp_list(),
    pantheria = data_pantheria()
  )
}
