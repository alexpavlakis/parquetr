#' Write a parquet file from R dataframe via pandas write_parquet
#'
#' This function allows you to write a parquet file from an R data frame.
#' @param dd A data frame
#' @param path A character string naming a filepath
#' @keywords parquet
#' @import reticulate dplyr
#' @export

write_parquet <- function(dd, file) {
  tryCatch( {
    pd <- import("pandas")
    r_to_py(dd)$to_parquet(file)
  }, error = function(e) {
    cat("unable to write file. \n")
    print(e)
  }
  )
}
