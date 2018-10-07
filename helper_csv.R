# ----------------------------- #
# Author: Lukas Richter
# Date: 2018-10-07
# ----------------------------- #
# read excel and save as csv (csv files should be used for the case study)

# Basic functions and packages
library("openxlsx", "tidyverse")

ipd_cases <- openxlsx::read.xlsx("data/ipd_epiconcept_2000-2017.xlsx", sheet = 1)
ipd_cases$AgeGroup <- dplyr::recode(ipd_cases$AgeGroup,
                                    "<5Yrs" = "0-4",
                                    "5-64Yrs" = "5-64",
                                    "65+" = "65+")

ipd_population <- openxlsx::read.xlsx("data/ipd_epiconcept_2000-2017.xlsx", sheet = 2)

# save csv
write.csv(ipd_cases, file = "data/ipd_cases.csv", row.names = FALSE)
write.csv(ipd_population, file = "data/ipd_population.csv", row.names = FALSE)

