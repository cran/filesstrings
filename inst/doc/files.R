## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, comment = "#>")

## ----load----------------------------------------------------------------
library(filesstrings)

## ---- move files---------------------------------------------------------
setwd(tempdir())
dir.create("tmp_00")
file.create("tmp000.txt")
list.files()
PutFilesInDir("tmp000.txt", "tmp_00")
list.files()
list.files("tmp_00")
unlink("tmp_00", recursive = TRUE)

## ---- delete directory---------------------------------------------------
setwd(tempdir())
dir.create("tmp_00")
list.files()
RemoveDirs("tmp_00")
list.files()

## ---- RemoveFileNameSpaces-----------------------------------------------
setwd(tempdir())
file.create(c("file 1.txt", "file 2.txt"))
list.files()
RemoveFileNameSpaces(replace.with = "_")
list.files()
file.remove(list.files())

