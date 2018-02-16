PDF_DIRECTORY = pdf
ODT_DIRECTORY = odt

LANGUAGES = english deutsch

PDF_TARGETS = $(LANGUAGES:=.pdf)
ODT_TARGETS = $(LANGUAGES:=.odt)

PDF_TARGETS_FINAL = $(addprefix $(PDF_DIRECTORY)/,$(PDF_TARGETS))
ODT_TARGETS_FINAL = $(addprefix $(ODT_DIRECTORY)/,$(ODT_TARGETS))

pdf: $(PDF_TARGETS_FINAL)
odt: $(ODT_TARGETS_FINAL)

all: pdf odt

$(PDF_DIRECTORY)/%.pdf: %.tex bibliography.tex
	for i in 1 2; do pdflatex -output-directory=$(PDF_DIRECTORY) $< || true; done

$(ODT_DIRECTORY)/%.odt: %.tex bibliography.tex
	latex2html $< -split 0 -no_navigation -info "" -address "" -html_version 4.0,unicode
	libreoffice --headless --convert-to odt:"OpenDocument Text Flat XML" --outdir $(ODT_DIRECTORY) $(<:.tex=)/index.html
	mv $(ODT_DIRECTORY)/index.odt $@
# The links have to be removed in LibreOffice manually.

.PHONY: all pdf odt
