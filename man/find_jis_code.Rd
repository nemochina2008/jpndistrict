% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/city_name_table.R
\name{find_jis_code}
\alias{find_jis_code}
\title{Find jis city code}
\usage{
find_jis_code(pref_code, admin_name, strict = TRUE)
}
\arguments{
\item{pref_code}{jis code from 1 to 47}

\item{admin_name}{prefecture names (string)}

\item{strict}{matching patterns}
}
\value{
Identification code for cities,towns and villages (JIS X 0402:2010)
}
\description{
Find jis city code
}
\examples{
\dontrun{
find_jis_code(33,
intToUtf8(c(20489, 25975, 24066), multiple = FALSE))
find_jis_code(33,
enc2native(intToUtf8(c(20489, 25975, 24066), multiple = FALSE)),
strict = FALSE)

find_jis_code(14,
c(enc2native(intToUtf8(c(37772, 20489, 24066), multiple = FALSE)),
  enc2native(intToUtf8(c(23567, 30000, 21407, 24066), multiple = FALSE))), strict = FALSE)
}
}
