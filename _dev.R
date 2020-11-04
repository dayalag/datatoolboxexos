
## to buildignore
usethis::use_build_ignore("_dev.R")

## create compendium
rrtools::use_compendium("../datatoolboxexos/", open = FALSE)
# overwrite yes


## add r fils
usethis::use_r(name = "data_wildfinder.R")
# add needed packages
usethis::use_package("readr")
usethis::use_package("here")
usethis::use_package("visNetwork")

rrtools::use_readme_rmd()

# ignore data
usethis::use_build_ignore("data/")

# licence
usethis::use_mit_license(name = "Nina Schiettekatte")

usethis::use_build_ignore("exercises/")

usethis::use_pipe()

##### drake #####
usethis::use_r(name = "wrangle.R")
usethis::use_r(name = "plots.R")
usethis::use_r(name = "plan.R")
usethis::use_r(name = "load.R")
file.create("_drake.R")
file.create("make.R")
dir.create("output")
dir.create("text")
dir.create("output/plots")
dir.create("output/text")

# add needed packages
usethis::use_package("dplyr")
usethis::use_package("ggplot2")
usethis::use_package("magrittr")
usethis::use_package("forcats")
usethis::use_package("fishualize")
usethis::use_package("sf")
usethis::use_package("drake")

# ignore files
usethis::use_build_ignore(".drake")
usethis::use_build_ignore("_drake.R")
usethis::use_build_ignore("make.R")
usethis::use_git_ignore(".drake")
usethis::use_build_ignore("output/")
usethis::use_build_ignore("text/")


