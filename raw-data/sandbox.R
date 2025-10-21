library(tidyverse)
library(educationdata)


getwd()
setwd("~/Programming/occupational-licensing-study/raw-data") # will have to modify later
completions_2018 <- read.csv("c2018_a_rv.csv")


completions_cosme <- completions_2018 %>%
  filter(CIPCODE == 12.0401) %>%
  select('CTOTALT', 'CIPCODE', 'UNITID')

# use directory data to start matching unit ID to states, then aggregate
# directory_data <- get_education_data(level = 'college-university',
#                                      source = 'ipeds',
#                                      topic = 'directory',
#                                      filters = list(year = 2018))


completions_cosme <- left_join(completions_cosme, directory_data, by = c('UNITID' = 'unitid')) %>%
  select('CTOTALT', 'CIPCODE', 'UNITID', 'fips', 'state_abbr')


cosmetics_agg <- completions_cosme %>%
  group_by(fips) %>%
  reframe(total_completions = sum(CTOTALT), na.rm = T)
