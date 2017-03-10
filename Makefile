PDF_DIRECTORY = pdf
ODT_DIRECTORY = odt

pdf: $(PDF_DIRECTORY)/english.pdf
odt: $(ODT_DIRECTORY)/english.odt

all: pdf

$(PDF_DIRECTORY)/english.pdf: english.tex
	pdflatex -output-directory=$(PDF_DIRECTORY) english.tex
	pdflatex -output-directory=$(PDF_DIRECTORY) english.tex

$(ODT_DIRECTORY)/english.odt: english.tex
	latex2html $< -split 0 -no_navigation -info "" -address "" -html_version 4.0,unicode
	libreoffice --headless --convert-to odt:"OpenDocument Text Flat XML" english/index.html
	mv index.odt $@

.PHONY: all pdf odt
