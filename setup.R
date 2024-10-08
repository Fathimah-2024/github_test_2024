# a script for installing (if needed) and loading packages for this project.

packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

packageLoad('tidyverse')

# create a string of package names
packages <- c('tidyverse',
              'palmerpenguins', 
              'lterdatasampler', 
              'rstatix')

packageLoad(packages)
