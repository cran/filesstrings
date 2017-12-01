## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, comment = "#>")

## ----load----------------------------------------------------------------
library(filesstrings)

## ----nth number----------------------------------------------------------
pop <- "A population of 1000 comprised of 488 dogs and 512 cats."
first_number(pop)
nth_number(pop, 2)
last_number(pop)

## ----all the numbers-----------------------------------------------------
extract_numbers(pop)

## ----all the non-numbers-------------------------------------------------
extract_non_numerics(pop)

## ----split by nums-------------------------------------------------------
str_split_by_nums(pop)

## ----can_be_numeric------------------------------------------------------
is.numeric(23)
is.numeric("23")
can_be_numeric(23)
can_be_numeric("23")
can_be_numeric("23a")

## ------------------------------------------------------------------------
str_elem("abc", 2)
str_elem("abcdefz", -1)  # last element

## ----trim anything-------------------------------------------------------
trim_anything("__rmarkdown_", "_")

## ----count matches-------------------------------------------------------
count_matches(pop, " ")  # count the spaces in pop
count_matches("Bob and Joe went to see Bob's mother.", "Bob")

## ----dups to sings-------------------------------------------------------
double__spaced <- "Hello  world,  pretend  it's  Saturday  :-)"
count_matches(double__spaced, " ")  # count the spaces
single_spaced <- singleize(double__spaced, pattern = " ")
single_spaced
count_matches(single_spaced, " ")  # half the spaces are gone

## ----about a box---------------------------------------------------------
box_infos <- c("Box 1 has weight 23kg and volume 0.3 cubic metres.",
               "Box 2 has weight 20kg and volume 0.33 cubic metres.")

## ----after weight--------------------------------------------------------
library(magrittr)
str_after_nth(box_infos, "weight", 1)  # the bit of the string after 1st "weight"
str_after_nth(box_infos, "weight", 1) %>% nth_number(1)  # 1st number after 1st "weight"

## ----box df, message=FALSE-----------------------------------------------
tibble::tibble(box = nth_number(box_infos, 1),
        weight = str_after_nth(box_infos, "weight", 1) %>% 
          nth_number(1, decimals = TRUE),
        volume = str_after_nth(box_infos, "volume", 1) %>% 
          nth_number(1, decimals = TRUE)
)

## ----camel case----------------------------------------------------------
camel_names <- c("JoeBloggs", "JaneyMac")
str_split_camel_case(camel_names)

