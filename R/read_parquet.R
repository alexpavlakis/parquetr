#' Read a parquet file as an R dataframe via pandas read_parquet
#'
#' This function allows you to read a parquet file as an R data frame.
#' @param path The parquet file path
#' @keywords parquet
#' @import reticulate dplyr
#' @export

read_parquet <- function(file) {
  tryCatch( {
    pd <- import("pandas")
    dd <- as_tibble(pd$read_parquet(file))
    return(dd)
  }, error = function(e) {
    cat("unable to read file. \n")
    print(e)
  }
  )
}

