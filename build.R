is_rmarkdown_installed <- require("rmarkdown")

if (!is_rmarkdown_installed) {
  install.packages("rmarkdown", repos = "https://cloud.r-project.org")
}

library(rmarkdown)

rmarkdown::render(
  "main.Rmd",
  output_dir = "build",
  output_file = "index.html",
  rmarkdown::html_document()
)
