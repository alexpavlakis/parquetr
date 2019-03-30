
<!-- README.md is generated from README.Rmd. Please edit that file -->
parquetr
========

The goal of parquetr is to let you read and write parquet files with R without a spark connection. At present it is simply a wrapper for pandas `read_parquet` and `to_parquet` via reticulate, but hopefully will improve and expand in the future.

Installation
------------

You can install the development version of parquetr with `devtools::install_github('alexpavlakis/parquetr')`

Example
-------

Parquetr makes it easy to read and write parquet files.

``` r
library(parquetr)

# Write iris as a parquet file
tf <- tempfile()
write_parquet(iris, tf)
#> None

# Read the parquet file back as a tibble
iris2 <- read_parquet(tf)
head(iris2)
#> # A tibble: 6 x 5
#>   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
#>          <dbl>       <dbl>        <dbl>       <dbl> <chr>  
#> 1          5.1         3.5          1.4         0.2 setosa 
#> 2          4.9         3            1.4         0.2 setosa 
#> 3          4.7         3.2          1.3         0.2 setosa 
#> 4          4.6         3.1          1.5         0.2 setosa 
#> 5          5           3.6          1.4         0.2 setosa 
#> 6          5.4         3.9          1.7         0.4 setosa
```
