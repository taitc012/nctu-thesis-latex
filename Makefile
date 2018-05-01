BASE = thesis

all: pdf

pdf: ${BASE}.pdf

${BASE}.pdf: ${BASE}.tex
	xelatex -no-pdf --interaction=nonstopmode ${BASE}
	bibtex ${BASE}
	xelatex -no-pdf --interaction=nonstopmode ${BASE}
	xelatex --interaction=nonstopmode ${BASE}


tar: ${BASE}.pdf

# TARSOURCE = *.tex *.pdf *.bst *.cfg *.cls Makefile body
# figures reference

# ${BASE}.tar: ${TARSOURCE}
#      tar jcf ${BASE}.tar.bz2 ${TARSOURCE}

clean:
	rm -f *.aux *.log *.lot *.out *.toc *.blg *.bbl *.lof *.xdv thesis-blx.bib  thesis.run.xml

clean-pdf: clean
	rm *.pdf

