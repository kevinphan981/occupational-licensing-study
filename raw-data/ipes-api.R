library(educationdata)
library(tidyverse)

########### Changes to be Made ############

# 1. Need to expand the cip_code to all of 12.04, which is cosmetology and other fields like barbers
# 2. Write code to merge data into a dataset that is comprehensible

################# Code ###################
# completions data, only filter is year completions-cip-6
df <- get_education_data(level = 'college-university',
                         source = 'ipeds',
                         topic = 'fall-enrollment',
                         subtopic = c("race", "sex"),
                         filters = list(year = 2010:2019),
                         ) 


directory_data <- get_education_data(level = 'college-university',
                                     source = 'ipeds',
                                     topic = 'directory',
                                     filters = list(year = 2018))
                        
#filter(cip_code = "12.0401") # filters for cosmetology

# enrollment

# enrollment <- get_education_data_summary(level = 'college-university',
#                                  source = "ipeds",
#                                  topic = 'fall-enrollment',
#                                  subtopic = 'race',
#                                  stat = 'sum',
#                                  var = 'fall-enrollment',
#                                  by = 'fips',
#                                  filters = list(year = 2018)
#                                 ) 

# retention

# grad rates

# outcome-measures?

# student-faculty-ratio

# tuition?