## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, comment = "#>")

## ----load----------------------------------------------------------------
library(filesstrings)

## ----nth number----------------------------------------------------------
pop <- "A population of 1000 comprised of 488 dogs and 512 cats."
NthNumber(pop, 1)
NthNumber(pop, -1)  # last number

## ----all the numbers-----------------------------------------------------
ExtractNumbers(pop)

## ----all the non-numbers-------------------------------------------------
ExtractNonNumerics(pop)

## ----split by nums-------------------------------------------------------
StrSplitByNums(pop)

## ----CanBeNumeric--------------------------------------------------------
is.numeric(23)
is.numeric("23")
CanBeNumeric(23)
CanBeNumeric("23")
CanBeNumeric("23a")

## ------------------------------------------------------------------------
StrElem("abc", 2)
StrElem("abcdefz", -1)  # last element

## ----trim anything-------------------------------------------------------
TrimAnything("__rmarkdown_", "_")

## ----count matches-------------------------------------------------------
CountMatches(pop, " ")  # count the spaces in pop
CountMatches("Bob and Joe went to see Bob's mother.", "Bob")

## ----dups to sings-------------------------------------------------------
double__spaced <- "Hello  world,  pretend  it's  Saturday  :-)"
CountMatches(double__spaced, " ")  # count the spaces
single_spaced <- DuplicatesToSingles(double__spaced, pattern = " ")
single_spaced
CountMatches(single_spaced, " ")  # half the spaces are gone

## ----about a box---------------------------------------------------------
box.infos <- c("Box 1 has weight 23kg and volume 0.3 cubic metres.",
               "Box 2 has weight 20kg and volume 0.33 cubic metres.")

## ----after weight--------------------------------------------------------
library(magrittr)
StrAfterNth(box.infos, "weight", 1)  # the bit of the string after 1st "weight"
StrAfterNth(box.infos, "weight", 1) %>% NthNumber(1)  # 1st number after 1st "weight"

## ----box df, message=FALSE-----------------------------------------------
tibble::tibble(box = NthNumber(box.infos, 1),
        weight = StrAfterNth(box.infos, "weight", 1) %>% 
          NthNumber(1, decimals = TRUE),
        volume = StrAfterNth(box.infos, "volume", 1) %>% 
          NthNumber(1, decimals = TRUE)
)

## ----camel case----------------------------------------------------------
camel.names <- c("JoeBloggs", "JaneyMac")
SplitCamelCase(camel.names)

## ----PasteCollapseListElems----------------------------------------------
SplitCamelCase(camel.names) %>% PasteCollapseListElems(" ")

