default: ert642.pdf

%.pdf: %.tex %.bib *.tex
	pdflatex $*
	bibtex $*
	pdflatex $*
	pdflatex $*

anonymous.bib: bibliography-primary.bib bibliography-anonymous.bib
	cat $^ > $@

dssg.bib: bibliography-primary.bib bibliography-glimmer.bib
	cat $^ > $@

ert642.bib: bibliography-primary.bib bibliography-glimmer.bib
	cat $^ > $@
