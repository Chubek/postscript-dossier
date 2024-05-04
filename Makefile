M4 = m4
PANDOC = pandoc
M4_SOURCE = ps-dossier.md.m4
M4_DEST = _ps-dossier.md

PANDOC_HTML_DEST = _ps-dossier.html
PANDOC_LATEX_DEST = _ps-dossier.tex
PANDOC_PDF_DEST = _ps-dossier.pdf


.PHONY: clean pdf latex markdown html

pdf: $(PANDOC_PDF_DEST)
	echo PDF generated, you can also use `make latex, `make html` and `make markdown`

latex: $(PANDOC_LATEX_DEST)
	echo LaTeX generated, you can also use `make pdf`, `make html` and `make markdown`

html: $(PANDOC_HTML_DEST)
	echo HTML generated, you can also use `make pdf`, `make latex` and `make markdown`

markdown: $(M4_DEST)
	echo Mardown generated, you can also use `make pdf`, `make latex` and `make html`

clean:
	rm -f $(PANDOC_HTML_DEST) $(PANDOC_LATEX_DEST) $(PANDOC_PDF_DEST) $(M4_MARKDOWN_DEST)

$(PANDOC_PDF_DEST): $(M4_SOURCE)
	cat $(M4_DEST) | pandoc -fmarkdown -tpdf > $(PANDOC_PDF_DEST)

$(PANDOC_LATEX_DEST): $(M4_SOURCE)
	cat $(M4_DEST) | pandoc -fmarkdown -tlatex > $(PANDOC_LATEX_DEST)

$(PANDOC_HTML_DEST): $(M4_SOURCE)
	cat $(M4_DEST) | pandoc -fmarkdown -thtml > $(PANDOC_HTML_DEST)

$(M4_DEST): $(M4_SOURCE)
	m4 $(M4_SOURCE) > $(M4_DEST)


