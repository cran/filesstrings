filesstrings
================

Convenient functions for moving files, deleting directories, and a variety of string operations that facilitate manipulating file names and extracting information from strings.

[![Travis-CI Build Status](https://travis-ci.org/rorynolan/filesstrings.svg?branch=master)](https://travis-ci.org/rorynolan/filesstrings) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/rorynolan/filesstrings?branch=master&svg=true)](https://ci.appveyor.com/project/rorynolan/filesstrings) [![codecov](https://codecov.io/gh/rorynolan/filesstrings/branch/master/graph/badge.svg)](https://codecov.io/gh/rorynolan/filesstrings) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/filesstrings)](https://cran.r-project.org/package=filesstrings) ![RStudio CRAN downloads](http://cranlogs.r-pkg.org/badges/grand-total/filesstrings) [![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active) [![JOSS publication](http://joss.theoj.org/papers/10.21105/joss.00260/status.svg)](https://doi.org/10.21105/joss.00260)

Installation
============

To install the release version (recommended) from CRAN, in R, enter

``` r
install.packages("filesstrings")
```

To install the development version, in R, first install `devtools` via `install.packages("devtools")`. Then enter

``` r
devtools::install_github("rorynolan/filesstrings")
```

Use
===

First let's load the library:

``` r
library(filesstrings)
```

    #> Loading required package: stringr

Files
-----

### Move files around

I find it bizarre that base R has no `file.move`. To move a file, you have to unintuitively rename it. `filesstrings` provides `file.move(files, destinations)`. This function has the nice feature that if you try to move files to a directory that doesn't exist, it creates the directory first and then puts the files inside. Let's create a directory and a file:

``` r
dir.create("tmp_dir")
file.create("tmp.txt")
```

    #> [1] TRUE

Now let's put the file into the directory:

``` r
file.move("tmp.txt", "tmp_dir")
```

    #> 1 files moved. 0 failed to move.

### Delete Directories

To delete directories with base R, one has to use `unlink(..., recursive = TRUE)`. The `filesstrings` package gives you `dir.remove()` which does the same job.

``` r
dir.remove("tmp_dir")
```

    #> 1 directories deleted. 0 failed to delete.

### Remove spaces from file names

"A space in your file name is a hole in your soul." - Jenny Bryan

`RemoveFileNameSpaces(replace.with = "_")` replaces them all with underscores for all files in a directory. By default, they are replaced with nothing.

``` r
file.create(c("file 1.txt", "file 2.txt"))
```

    #> [1] TRUE TRUE

``` r
RemoveFileNameSpaces(pattern = "txt$", replace.with = "_")
```

    #> 2 files renamed. 0 failed to rename.

``` r
list.files(pattern = "txt$")
```

    #> [1] "file_1.txt" "file_2.txt"

``` r
file.remove(list.files(pattern = "txt$"))  # clean up
```

    #> [1] TRUE TRUE

Strings
-------

### The *n*<sup>th</sup> number in a string

I often want to get the first, last or *n*<sup>th</sup> number in a string.

``` r
pop <- "A population of 1000 comprised of 488 dogs and 512 cats."
NthNumber(pop, 1)
```

    #> [1] 1000

``` r
NthNumber(pop, -1)  # last number
```

    #> [1] 512

### All the numbers in a string

``` r
ExtractNumbers(pop)
```

    #> [[1]]
    #> [1] 1000  488  512

### All the non-numbers in a string

``` r
ExtractNonNumerics(pop)
```

    #> [[1]]
    #> [1] "A population of " " comprised of "   " dogs and "      
    #> [4] " cats."

### Trim anything (not just whitespace)

`stringr`'s `str_trim` just trims whitespace. What if you want to trim something else? Now you can `TrimAnything()`.

``` r
TrimAnything("__rmarkdown_", "_")
```

    #> [1] "rmarkdown"

Contribution
============

Contributions to this package are welcome. The preferred method of contribution is through a github pull request. Feel free to contact me by creating an issue. Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.