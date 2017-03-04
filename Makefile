OUTPUT_DIRECTORY = pdf

$(OUTPUT_DIRECTORY)/english.pdf: english.tex
	pdflatex -output-directory=$(OUTPUT_DIRECTORY) english.tex
	pdflatex -output-directory=$(OUTPUT_DIRECTORY) english.tex
