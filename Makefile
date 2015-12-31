# LaTeX Makefile
FILE=report

all: $(FILE).pdf

.PHONY: clean
clean:
	-rm *.pdf *.aux *.blg *.out *.bbl *.log

$(FILE).pdf: $(FILE).tex
	pdflatex $(FILE)
	pdflatex $(FILE)
	bibtex $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)