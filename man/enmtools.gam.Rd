% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/enmtools.gam.R
\name{enmtools.gam}
\alias{enmtools.gam}
\title{Takes an emtools.species object with presence and background points, and builds a gam}
\usage{
enmtools.gam(species, env, f = NULL, test.prop = 0, k = 4, nback = 1000,
  report = NULL, overwrite = FALSE, rts.reps = 0, ...)
}
\arguments{
\item{species}{An enmtools.species object}

\item{env}{A raster or raster stack of environmental data.}

\item{f}{Standard gam formula}

\item{test.prop}{Proportion of data to withhold for model evaluation}

\item{k}{Dimension of the basis used to represent the smooth term.  See documentation for s() for details.}

\item{nback}{Number of background points to draw from range or env, if background points aren't provided}

\item{report}{Optional name of an html file for generating reports}

\item{overwrite}{TRUE/FALSE whether to overwrite a report file if it already exists}

\item{rts.reps}{The number of replicates to do for a Raes and ter Steege-style test of significance}

\item{...}{Arguments to be passed to gam()}
}
\description{
Takes an emtools.species object with presence and background points, and builds a gam
}
\examples{
data(euro.worldclim)
data(iberolacerta.clade)
enmtools.gam(iberolacerta.clade$species$monticola, env = euro.worldclim, f = pres ~ bio1 + bio9)
}
