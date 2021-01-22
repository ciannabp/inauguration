


#' Complete list of palettes
#'
#' Use \code{\link{inauguration}} to construct palettes of desired length.
#'
#' @export
inauguration_palettes <- list(
  inauguration_2021 = c("#5445b1", "#749dae", "#f3c483", "#5c1a33", "#cd3341","#f7dc6a"),
  inauguration_2021_bernie = c("#5445b1", "#749dae", "#f3c483", "#5c1a33", "#cd3341","#f7dc6a","#6B4B3B")
)

#' Inauguration palette generator
#'
#'
#'
#' @param n Number of colors desired. Most palettes now only
#'   have 5 to 8 colors. Most color
#'   schemes are derived from \href{http://poppygall.com/blog/2011/07/25/color-inspiration-national-park-wpa-posters/}{Color Inspiration – National Park WPA Posters}.
#'   If omitted, uses all colours.
#' @param name Name of desired palette. Choices are:
#'   \code{inauguration_2021}, \code{inauguration_2021_bernie}
#'   @importFrom graphics rgb rect par image text
#' @return A vector of colours.
#' @export
#' @keywords colors
#' @examples
#' inauguration("inauguration_2021")
#' inauguration("inauguration_2021", 3)

inauguration <- function(name, n) {


  pal <- inauguration_palettes[[name]]
  if (is.null(pal))
    stop("Palette not found.")

  if (missing(n)) {
    n <- length(pal)
  }

  if (n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }

  out <- pal[1:n]

  structure(out, class = "palette", name = name)
}

#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")

  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, col = "#32373D")
}




