all: slides purl handout

slides: ubc-vegan-study-group.Rmd
	Rscript -e "rmarkdown::render(\"ubc-vegan-study-group.Rmd\")"

purl: ubc-vegan-study-group.Rmd
	Rscript -e "knitr::purl(\"ubc-vegan-study-group.Rmd\")"

handout: ubc-vegan-study-group.pdf
	pdfnup ubc-vegan-study-group.pdf --frame true --outfile handout-ubc-vegan-study-group.pdf --delta "0.2cm 0.2cm" --nup 2x2 --scale 0.95	
