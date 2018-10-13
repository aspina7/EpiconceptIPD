
# Interrupted time series analysis of scottish pneumococcal surveillace data, 2000-2017

This is the repository for the Epiconcept case study on interrupted time series using *R* statistical programming software. 

The following files are included: 

- *EpiconceptIPD.Rmd*: an R-markdown file which has all the text and analysis script for the case study. This uses the "worded" package for styling word documents (mostly for being able to insert page breaks) - which can be installed using devtools::install_github("davidgohel/worded"). The package is loaded at the of the markdown script within the r setup code-chunk.
  - In order for this to work you will require [Pandoc](https://pandoc.org/installing.html) and also a LaTeX processor such as [MiKTeX](https://miktex.org/download).
  - Knitting the Rmd file expects the data in the *data* sub-folder. We are currently not sharing this data over github. Please make sure you have the data locally when compiling the file.
- *README.md*: a markdown file that is used to create this introductory text for the git-hub repository. 
- *LICENSE.md*: a markdown file that is used to create a license for the git-hub repository. 
- *EpiconceptIPD.Rproj*: an R project required for being able to push scripts up on to git-hub. 
- *.gitignore*: required for the initiation of git repositories. 
- *helper_csv.R*: little helper file which converts the original *xlsx* data files to *csv* files. Not required for the case study itself.