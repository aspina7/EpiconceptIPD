# ----------------------------- #
# Author: Lukas Richter
# Date: 2018-10-07
# ----------------------------- #
# read excel and save as csv (csv files should be used for the case study)

# Basic functions and packages
library("openxlsx", "tidyverse")

# read in ipd cases and recode groups
ipd_cases <- openxlsx::read.xlsx("data/ipd_epiconcept_2000-2017.xlsx", sheet = 1)
ipd_cases$AgeGroup <- dplyr::recode(ipd_cases$AgeGroup,
                                    "<5Yrs" = "0-4",
                                    "5-64Yrs" = "5-64",
                                    "65+" = "65+")

# read in population
ipd_population <- openxlsx::read.xlsx("data/ipd_epiconcept_2000-2017.xlsx", sheet = 2)

# flip rows and columns - drop first row (with colnames)
ipd_population <- data.frame(t(ipd_population)[-1, ])

# bind create year variable
ipd_population$year <- rownames(ipd_population)

# change colnames
colnames(ipd_population) <- c("0-4", "5-64", "65+", "Total_pop", "year")




# save csv
write.csv(ipd_cases, file = "data/ipd_cases.csv", row.names = FALSE)
write.csv(ipd_population, file = "data/ipd_population.csv", row.names = FALSE)

