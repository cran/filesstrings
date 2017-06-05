## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, comment = "#>")

## ----load----------------------------------------------------------------
library(filesstrings)

## ----create dir----------------------------------------------------------
dir.create("tmp_dir")
file.create("tmp.txt")

## ----put a file in a dir-------------------------------------------------
file.move("tmp.txt", "tmp_dir")

## ---- remove directory---------------------------------------------------
dir.remove("tmp_dir")

## ---- RemoveFileNameSpaces-----------------------------------------------
file.create(c("file 1.txt", "file 2.txt"))
RemoveFileNameSpaces(pattern = "txt$", replace.with = "_")
list.files(pattern = "txt$")
file.remove(list.files(pattern = "txt$"))  # clean up

## ----NiceNums setup------------------------------------------------------
file.names <- c("file999.tif", "file1000.tif")
sort(file.names)

## ----NiceNums------------------------------------------------------------
NiceNums(file.names)

## ----BeforeLastDot-------------------------------------------------------
BeforeLastDot("spreadsheet_92.csv")

## ----add file extension 1------------------------------------------------
GiveExt("xyz", "csv")

## ----add file extension 2------------------------------------------------
GiveExt("xyz.csv", "csv")  

## ----change file extension-----------------------------------------------
GiveExt("abc.csv", "txt")  # tack the new extension onto the end
GiveExt("abc.csv", "txt", replace = TRUE)  # replace the current extension

