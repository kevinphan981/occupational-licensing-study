# the essentials
library(tidyverse)
library(readxl)
library(foreign) # for software like stata

reductions <- read.csv('raw-data/cosmetology-hours-data.csv')
completions <- read.csv('raw-data/cosmetology-completions.csv')


