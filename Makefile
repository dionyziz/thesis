SOURCES := $(shell find . -iname '*.tex')

.PHONY: all clean

all: thesis.pdf

thesis.pdf: $(SOURCES)
	pdflatex thesis.tex
	bibtex thesis
	pdflatex thesis.tex
	pdflatex thesis.tex

clean:
	rm -f *.aux *.log *.out *.cfg *.glo *.idx *.toc *.ilg *.ind *.lof *.lot *.bbl *.blg *.gls *.cut *.hd *.dvi *.ps *.thm *.rpi *.d *.fls *.pyc *.fdb_latexmk
	rm -Rf latex.out
