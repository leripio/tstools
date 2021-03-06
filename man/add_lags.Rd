% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auto_forecast.R
\name{add_lags}
\alias{add_lags}
\title{Create lagged variables}
\usage{
add_lags(data, vars_lags, suffix)
}
\arguments{
\item{data}{A tbl with variables in columns.}

\item{vars_lags}{list with variables names and disired lags}

\item{suffix}{Character string with suffix for lagged variables. Default is "_l".}

}

\value{
An object of class tibble (tbl) with lagged variables.
}
\description{
Given a tibble (or data frame) and a list with variables names and disired lags, the function creates a tibble with the lagged variables.
}

\examples{
\dontrun{

library(tidyverse)
library(tstools)

data <- tibble(Date = seq.Date(from = as.Date("2012-01-01"),
                               to = as.Date("2018-06-01"),
                               by = "month"),
               V1 = rnorm(mean = 0, sd = 1, n = 78),
               V2 = rnorm(mean = 1, sd = 2, n = 78),
               V3 = rnorm(mean = 5, sd = 1, n = 78))

data_lagged <- add_lags(data, vars_lags = list("V1" = 1:3, "V2" = 2, "V3" = c(1,7)), suffix = "_l")
              }
}
\author{
J. Renato Leripio
}
