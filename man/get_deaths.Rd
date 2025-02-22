% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/canadacovidmetrics.R
\name{get_deaths}
\alias{get_deaths}
\title{Query total cumulative deaths with ability to specify
location and date range of returned data.}
\usage{
get_deaths(
  loc = "prov",
  date = NULL,
  after = "2020-01-01",
  before = Sys.Date(),
  datetime_type = TRUE
)
}
\arguments{
\item{loc}{string: Specify geographic filter and aggregation of returned data.
Valid loc arguments are: 'canada', 'prov' and two-letter
province codes (e.g. 'ON', 'BC', etc.)}

\item{date}{string: If not None, return data from the specified date YYYY-MM-DD.
Superceeds 'after' and 'before' parameters.}

\item{after}{string: Return data on and after the specified date YYYY-MM-DD.}

\item{before}{string: Return data on and before the specified date YYYY-MM-DD.}

\item{datetime_type}{boolean: Return date column as a character (FALSE) or as a Date (TRUE).}
}
\value{
Dataframe containing content of API response.
}
\description{
Query total cumulative deaths with ability to specify
location and date range of returned data.
}
\examples{
get_deaths(loc = "ON", before = "2021-12-31")
get_deaths(loc = "prov", date = "2021-09-01")
}
