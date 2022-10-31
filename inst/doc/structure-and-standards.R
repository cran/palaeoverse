## ----names, include=TRUE, eval = FALSE----------------------------------------
#  
#  # Nein!
#  Sup3rAw3sumFuncti0n.r
#  
#  # Besser
#  super_awesome_function.R
#  
#  # Das ist gut!
#  time_bins.R
#  

## ----style guide, include=TRUE, eval = FALSE----------------------------------
#  # Nope!
#  x = 1
#  y<-x+1
#  
#  # Awesome!
#  x <- 1
#  y <- x + 1

## ----download, include = TRUE, eval = FALSE-----------------------------------
#  #generate temp directory
#  files <- tempdir()
#  #download files
#  download.file(url = "www.goo.com", destfile = paste0(files, "/mgoo.csv"))
#  #run some kind function using the download
#  #REMEMBER: remove downloaded files
#  unlink(x = paste0(files, "/", list.files(files)))

## ----document, include = TRUE, eval = FALSE-----------------------------------
#  #' Geological Time Scale 2020
#  #'
#  #' A dataset of the Geological Time Scale 2020. Age data from:
#  #'  \url{https://stratigraphy.org/timescale/}.
#  #' Supplementary information is also included in the dataset for
#  #' plotting functionality (e.g. GTS2020 colour scheme).
#  #'
#  #' @format A data frame with 189 rows and 20 variables:
#  #' \describe{
#  #'   \item{index}{Index number for the order of all intervals in the dataset}
#  #'   \item{stage_number}{Index number for stages}
#  #'   \item{series_number}{Index number for series}
#  #'   \item{system_number}{Index number for system}
#  #'   \item{interval_name}{Names of intervals in the dataset}
#  #'   ...
#  #' }
#  #' @section References:
#  #' Gradstein, F.M., Ogg, J.G., Schmitz, M.D. and Ogg, G.M. eds. (2020).
#  #' Geologic time scale 2020. Elsevier.
#  #' @source Compiled by Lewis A. Jones. See item descriptions for details.
#  "GTS2020"

## ----function, include = TRUE, eval = FALSE-----------------------------------
#  #' An exemplary function
#  #' This function is used to demonstrate the documentation of functions.
#  #' @param example \code{character}. Arguments are the function inputs.
#  #' @param another_example \code{logical}. All arguments need to be documented.
#  #' @return A \code{list} is returned as output in this example function.
#  #' @details Describe more details if necessary, and list sources if applicable.
#  #' @section Developer:
#  #' Your name
#  #' @section Reviewer:
#  #' Name(s)
#  #' @examples
#  #' #Show off the example function
#  #' example_function(example = “documentation”, another_example = TRUE)
#  #' @export

## ----error, include = TRUE, eval = FALSE--------------------------------------
#  # Generate error message
#  if (!is.numeric(x)) {
#    stop("Error: 'x' must be a numeric vector.")
#  }

## ----warning, include = TRUE, eval = FALSE------------------------------------
#  # Generate warning message
#  if (!is.numeric(x)) {
#    warning("Warning: 'x' must be a numeric vector.")
#  }

## ----test, include = TRUE, eval = FALSE---------------------------------------
#  # Test expected outcome is equal to actual outcome
#  test_that("time_bins() works", {
#    expect_equal(nrow(time_bins(interval = c("Maastrichtian"))), 1)
#  })

