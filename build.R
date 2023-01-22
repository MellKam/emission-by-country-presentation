library(rmarkdown)

rmarkdown::render(
  "main.Rmd",
  output_dir = "build",
  output_file = "presentation.html",
  rmarkdown::html_document()
)
