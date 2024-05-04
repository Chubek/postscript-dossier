M4 = m4
PANDOC = pandoc
M4_SOURCE = ps-index.md.m4
M4_DEST = _index.md

PANDOC_HTML_DEST = _index.html
PANDOC_LATEX_DEST = _index.latex
PANDOC_PDF_DEST = _index.pdf


.PHONY: clean

clean:
	rm -f _index.*

pdf: $(M4_SOURCE)
	cat $(M4_DEST) | pandoc -fmarkdown -tlatex > $(PANDOC_PDF_DEST)

latex: $(M4_SOURCE)
	cat $(M4_DEST) | pandoc -fmarkdown -tlatex > $(PANDOC_LATEX_DEST)

html: $(M4_SOURCE)
	cat $(M4_DEST) | pandoc -fmarkdown -thtml > $(PANDOC_HTML_DEST)

markdown: $(M4_DEST)
	echo Mardown generated, you can use `make pdf`, `make latex` and `make html`

$(M4_DEST): $(M4_SOURCE)
	m4 $(M4_SOURCE) > $(M4_DEST)


