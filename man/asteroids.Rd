% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/asteroids.R
\docType{data}
\name{asteroids}
\alias{asteroids}
\title{Specifications of the planets in the Solar System.}
\format{A data frame with 5 records and 3 variables:
\describe{
  \item{name}{asteroid name;}
  \item{distance}{length of orbital semi-major axis [units: AU];}
  \item{eccentricity}{orbital eccentricity.}
}}
\source{
These data were constructed using information from NASA's Planetary Fact Sheet at https://nssdc.gsfc.nasa.gov/planetary/factsheet/asteroidfact.html.
}
\usage{
asteroids
}
\description{
A dataset containing the name, orbital radius and orbital eccentricity of
the top 5 exceptional asteroids in the Solar System. These include: Ceres, Pallas, Juno, Vesta, and Lutetia
}
\examples{
plot(eccentricity ~ distance, data = asteroids)
}
\keyword{datasets}
