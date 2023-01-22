is_rmarkdown_installed <- require("rmarkdown")
is_cleanrmd_installed <- require("cleanrmd")

if (!is_rmarkdown_installed) {
  install.packages("rmarkdown", repos = "https://cloud.r-project.org")
}
if (!is_cleanrmd_installed) {
  install.packages("remotes", repos = "https://cloud.r-project.org")
  remotes::install_github("gadenbuie/cleanrmd")
}

library(rmarkdown)
library(cleanrmd)

rmarkdown::render(
  "main.Rmd",
  output_dir = "build",
  output_file = "index.html",
  cleanrmd::html_document_clean(theme = "stylize")
)
