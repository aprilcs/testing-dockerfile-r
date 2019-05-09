#!/bin/bash

Rscript "fig1_happiness_of_individuals.R"
Rscript "fig2_distribution_of_happiness.R"

Rscript -e "rmarkdown::render('code/candy_trade.Rmd', 'html_document',output_dir = '/results')"

Rscript -e "writeLines(capture.output(sessionInfo())"
