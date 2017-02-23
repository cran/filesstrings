## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, comment = "#>")

## ----load----------------------------------------------------------------
library(filesstrings)

## ----nth number----------------------------------------------------------
request <- "I want the $35 scarf."
NthNumber(request, 1)
NthNumber("20 people want the $12 scarf.", -1)  # last number
GetCurrency(request)

## ----NiceNums setup------------------------------------------------------
file.names <- c("file999.tif", "file1000.tif")
sort(file.names)

## ----NiceNums------------------------------------------------------------
NiceNums(file.names)

## ----CanBeNumeric--------------------------------------------------------
is.numeric(23)
is.numeric("23")
CanBeNumeric(23)
CanBeNumeric("23")
CanBeNumeric("23a")
StrSplitByNums("23a")
CanBeNumeric(StrSplitByNums("23a")[[1]])

## ----BeforeLastDot-------------------------------------------------------
BeforeLastDot("spreadsheet_92.csv")

## ------------------------------------------------------------------------
StrElem("abc", 2)
StrElem("abcdefz", -1)

