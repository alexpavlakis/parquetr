context("Read and write parquet files")
library(parquetr)

test_that("read and write parquet files return the same data", {

  df <- tibble(
    a = letters,
    b = seq(1, 26, 1)
  )

  tf <- tempfile()
  write_parquet(df, tf)
  df2 <- read_parquet(tf)

  expect_equal(df, df2)
})
