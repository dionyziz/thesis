SOURCES := $(shell find . -iname '*.tex' -o -iname '*.bib' -o -iname '*.sty')

.PHONY: all clean

all: thesis.pdf

thesis.pdf: $(SOURCES)
	pdflatex -halt-on-error thesis.tex
	bibtex thesis
	makeindex thesis.idx
	pdflatex -halt-on-error thesis.tex
	pdflatex -halt-on-error thesis.tex

clean:
	rm -f *.aux *.log *.out *.cfg *.glo *.idx *.toc *.ilg *.ind *.lof *.lot *.bbl *.blg *.gls *.cut *.hd *.dvi *.ps *.thm *.rpi *.d *.fls *.pyc *.fdb_latexmk
	rm -Rf latex.out
	rm -Rf thesis.pdf
