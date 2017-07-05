% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/strings.R
\name{str_to_vec}
\alias{str_to_vec}
\title{Convert a string to a vector of characters}
\usage{
str_to_vec(string)
}
\arguments{
\item{string}{A string.}
}
\value{
A character vector.
}
\description{
Go from a string to a vector whose \eqn{i}th element is the \eqn{i}th
character in the string.
}
\examples{
str_to_vec("abcdef")
}