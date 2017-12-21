DOCTYPE = DMTN
DOCNUMBER = 063
DOCNAME = $(DOCTYPE)-$(DOCNUMBER)

$(DOCNAME).pdf: $(DOCNAME).tex
	latexmk -bibtex -xelatex $(DOCNAME)
