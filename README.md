
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Inauguration Palette

An R palette insipred by the beautiful colors of the 2021 inauguration

![](collage.png)

## Installation

You can install the released version of inauguration from GitHub with

``` r
# install.packages("devtools")
devtools::install_github("ciannabp/inauguration")
```

## Usage

``` r
library(inauguration)

names(inauguration_palettes)
#> [1] "inauguration_2021"        "inauguration_2021_bernie"
```

You can call the palette in just one command

``` r
inauguration("inauguration_2021")
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

![](kamala_jill_amy.png)

If you want a specific number of colors, you can also do that.

``` r
inauguration("inauguration_2021", 3)
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

…and for the Bernie fans out there

![](bernie1.png)

``` r
inauguration("inauguration_2021_bernie")
```

<img src="man/figures/README-unnamed-chunk-5-1.png" width="100%" />
