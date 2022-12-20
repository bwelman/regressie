#set.seed(25)
options(digits = 3)

# packages ---------------------------------------------------------------------

suppressMessages(library(tidyverse))
suppressMessages(library(caret))
suppressMessages(library(kableExtra))
suppressMessages(library(patchwork))


# knit options -----------------------------------------------------------------

options(knitr.kable.NA = "")

# ggplot2 options
theme_set(theme_bw())
