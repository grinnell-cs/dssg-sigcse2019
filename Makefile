default: anonymous.pdf dssg.pdf

%.pdf: %.tex %.bib main*.tex
	pdflatex $*
	bibtex $*
	pdflatex $*
	pdflatex $*

anonymous.bib: bibliography-primary.bib bibliography-anonymous.bib
	cat $^ > $@

dssg.bib: bibliography-primary.bib bibliography-glimmer.bib
	cat $^ > $@
