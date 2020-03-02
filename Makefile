SOURCES := $(shell find . -iname '*.tex' -o -iname '*.bib' -o -iname '*.sty' -o -ipath '*figures/*.pdf')

.PHONY: all clean

all: thesis.pdf

thesis.pdf: $(SOURCES)
	xelatex thesis.tex
	bibtex thesis
	makeindex thesis.idx
	xelatex thesis.tex
	xelatex thesis.tex

clean:
	rm -f *.aux *.log *.out *.cfg *.glo *.idx *.toc *.ilg *.ind *.lof *.lot *.bbl *.blg *.gls *.cut *.hd *.dvi *.ps *.thm *.rpi *.d *.fls *.pyc *.fdb_latexmk
	rm -Rf latex.out
	rm -Rf thesis.pdf
