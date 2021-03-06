% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/files.R
\name{remove_dir}
\alias{remove_dir}
\alias{dir.remove}
\title{Remove directories}
\usage{
remove_dir(...)

dir.remove(...)
}
\arguments{
\item{...}{The names of the directories, specified via relative or absolute
paths.}
}
\value{
Invisibly, a logical vector with \code{TRUE} for each success and
\code{FALSE} for failures.
}
\description{
Delete directories and all of their contents.
}
\examples{
\dontrun{
sapply(c("mydir1", "mydir2"), dir.create)
remove_dir(c("mydir1", "mydir2"))
}
}
