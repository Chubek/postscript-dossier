M4 = m4
PANDOC = pandoc
M4_SOURCE = ps-dossier.md.m4
M4_DEST = _ps-dossier.md

PANDOC_HTML_DEST = _ps-dossier.html
PANDOC_LATEX_DEST = _ps-dossier.tex
PANDOC_PDF_DEST = _ps-dossier.pdf

.PHONY: clean pdf latex markdown html all

all: markdown pdf latex html

clean:
	rm -f $(PANDOC_HTML_DEST) $(PANDOC_LATEX_DEST) $(PANDOC_PDF_DEST) $(M4_DEST)

pdf: 
	$(M4) $(M4_SOURCE) > $(M4_DEST)
	$(PANDOC) -f markdown -t pdf -o $(PANDOC_PDF_DEST) $(M4_DEST)

latex: 
	$(M4) $(M4_SOURCE) > $(M4_DEST)
	$(PANDOC) -f markdown -t latex -o $(PANDOC_LATEX_DEST) $(M4_DEST)

html: 
	$(M4) $(M4_SOURCE) > $(M4_DEST)
	$(PANDOC) -f markdown -t html -o $(PANDOC_HTML_DEST) $(M4_DEST)

markdown:
	$(M4) $(M4_SOURCE) > $(M4_DEST)

