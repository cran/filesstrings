% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/str-elem.R
\name{str_elems}
\alias{str_elems}
\alias{elems}
\title{Extract several single elements from a string.}
\usage{
str_elems(string, indices, byrow = TRUE)

elems(string, indices, byrow = TRUE)
}
\arguments{
\item{string}{A character vector.}

\item{indices}{A vector of integerish values. Negative indexing is allowed as
in \code{\link[stringr:str_sub]{stringr::str_sub()}}.}

\item{byrow}{Should the elements be organised in the matrix with one row per
string (\code{byrow = TRUE}, the default) or one column per string (\code{byrow = FALSE}). See examples if you don't understand.}
}
\description{
See \code{\link[strex:str_elems]{strex::str_elems()}}.
}