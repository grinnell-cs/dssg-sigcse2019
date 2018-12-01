default: ert642.pdf

%.pdf: %.tex bibliography.bib *.tex
	pdflatex $*
	bibtex $*
	pdflatex $*
	pdflatex $*

ZIPFILES = \
	Makefile \
	ACM-Reference-Format.bst \
	acmart.cls \
	abstract.tex \
	acknowledgements.tex \
	bibliography.bib \
	body.tex \
	ccsxml.tex \
	ert642.tex \
	keywords.tex \
	images

ert640.zip: $(ZIPFILES)
	rm -f $@
	zip -r $@ $(ZIPFILES)
