library(rmarkdown)

rmarkdown::render(
  "main.Rmd",
  output_dir = "build",
  output_file = "index.html",
  rmarkdown::html_document()
)
