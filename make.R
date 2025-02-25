############
#
# Data and Code for the CESAB Datatoolbox Exercises
#
##################################


#!/usr/bin/env Rscript

# ----- clean workspace
rm(list = ls())

# ----- install/update packages
devtools::install_deps()

# ----- load the dependencies
devtools::document()
devtools::load_all()

# ----- install compendium package
devtools::install(build = FALSE)

# ----- Knit exo dplyr
rmarkdown::render(here::here("exercices","exo_dplyr.Rmd"))

# ----- Knit exo spatial
rmarkdown::render(here::here("exercices","exo_ggplot.Rmd"))

# ----- drake
## Execute plan
drake::r_make()
## Visualize
drake::r_vis_drake_graph(targets_only = TRUE)
drake::r_vis_drake_graph()

