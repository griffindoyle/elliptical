#' Specifications of the planets in the Solar System.
#'
#' A dataset containing the name, orbital radius and orbital eccentricity of
#' the planets in the Solar System. I'm old school, so Pluto is still in there.
#'
#' @format A data frame with 9 records and 3 variables:
#' \describe{
#'   \item{name}{planet name;}
#'   \item{distance}{length of orbital semi-major axis [units: AU];}
#'   \item{eccentricity}{orbital eccentricity.}
#' }
#' @source
#' These data were constructed using information from NASA's Planetary Fact Sheet at http://nssdc.gsfc.nasa.gov/planetary/factsheet/.
#' @examples
#' plot(eccentricity ~ distance, data = planets)
"planets"

if (FALSE) {
  # Distances are in units of 1 000 000 km.
  #
  planets <- data.frame(
    name = c('Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune', 'Pluto', 'Eris', 'Haumea', 'Makemake', 'Sedna', 'Quaoar', 'Orcus', 'Ceres'),
    distance = c(57.9, 108.2, 149.6, 227.9, 778.6, 1433.5, 2872.5, 4495.1, 5906.4, 10139.893, 6465.321, 6838.867, 75816.201, 6488.508, 5899.093, 414.0),
    eccentricity = c(0.205, 0.007, 0.017, 0.094, 0.049, 0.057, 0.046, 0.011, 0.244, 0.44068, 0.19126, 0.15586, 0.85491, 0.034704, 0.2190, 0.0758)
  )
  #
  # Convert from km to AU.
  #
  planets <- transform(planets, distance = distance * 1e6 / 1.496e8)

  devtools::use_data(planets, overwrite = TRUE)
}