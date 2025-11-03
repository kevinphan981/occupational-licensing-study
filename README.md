# Occupational Licensing Study
Data and code for some data analytics concerning occupational licensing, with a potential focus on Hawaii. This work leverages on the current Economics literature revolving around occupational licensing, and will take an approach similar seen in many recent papers that employ econometric models. There may be additional theoretical models created, 
but I will note those in the documentation as time goes on. It is meant to analyze the changes in a select few occupations, not everything in aggregate (that would be far too much).

The fields in question:
1. Cosmetology
2. Electricians
3. Plumbing
4. Really anything related to house building


# TODO: 

1. *Begin to compile data sources into sets of CSV files, begin cleaning to get clean data sets.*
2. Use Apache Arrow or equivalent to get data from Python to R and vice versa.
3. Begin writing TeX file to accompany what I am doing, explaining the methodology and sources (will use Pandoc to later convert to .docx if desired)
4. Begin drafting model to implement, with potential visualizations to build the story.

# Model

Likely Callaway, Bacon, Goodman, Sant'Anna (2024) or Callway and Sant'Anna (2021). The idea of the 2024 paper is that there are certain levels of intensity that aren't captured in previous methods, the events that I have with training hours would be appropriate.

## Main Questions:
1. Is there a relationship between hours and completions, enrollments, and retention like the paper describes?
2. Does reciprocity affect local supply through enrollment?
   1. Does it affect wages?
3. Does the opportunity to switch between training hours and apprenticeships help?



# Notes

It seems like some education data can be read from the `educationdata` library from the Urban Institute. I still need to assemble a dataset for 
changes in licensing requirements for my desired professions. It works for certain endpoints, but generally, I have been very disappointed with how it uses the data from IPEDS, which 
is the data that I need the most for this project.


**Disclaimer: This repository is part of my work with the Grassroot Institute of Hawaii, certain things (aside from API keys and the like) will be made private as a result.**


