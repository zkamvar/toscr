
<!-- README.md is generated from README.Rmd. Please edit that file -->

# toscr

<!-- badges: start -->

[![R build
status](https://github.com/zkamvar/toscr/workflows/R-CMD-check/badge.svg)](https://github.com/zkamvar/toscr/actions)
<!-- badges: end -->

The goal of {toscr} is to read, manipulate, and write `touchosc` files.

## Installation

The development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("zkamvar/toscr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(toscr)
basic <- system.file("extdata", "basic.touchosc", package = "toscr")
x <- tosc_read(basic)
xml2::xml_find_all(x, ".//control")
#> {xml_nodeset (7)}
#> [1] <control name="dG9nZ2xlMQ==" x="128" y="107" w="64" h="65" color="brown" scalef="0.0" scalet= ...
#> [2] <control name="ZmFkZXIx" x="45" y="197" w="50" h="200" color="purple" scalef="0.0" scalet="1. ...
#> [3] <control name="ZmFkZXIy" x="132" y="197" w="50" h="200" color="gray" scalef="0.0" scalet="1.0 ...
#> [4] <control name="cm90YXJ5MQ==" x="32" y="101" w="77" h="77" color="green" scalef="0.0" scalet=" ...
#> [5] <control name="ZmFkZXIz" x="219" y="196" w="49" h="200" color="yellow" scalef="0.0" scalet="1 ...
#> [6] <control name="cm90YXJ5Mg==" x="205" y="101" w="77" h="77" color="orange" scalef="0.0" scalet ...
#> [7] <control name="bGVkMQ==" x="144" y="50" w="20" h="20" color="red" scalef="0.0" scalet="1.0" t ...
```
