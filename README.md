# GeoGebra Automated Reasoning Tools – A Tutorial

This repository contains the LaTeX sources for creating the official tutorial for GeoGebra Automated Reasoning Tools.

## PDF version

The latest official PDF version of the tutorial takes place in the
[pdf](pdf) folder. Currently there are English, French and German
versions. Please feel free to make a copy of [english.tex](english.tex)
and contribute a translation.

## Compilation

We use the command `pdflatex english` and `pdflatex deutsch` twice to
generate the PDF version of the English and German translations.
Alternatively the `make` and `make pdf` commands do the same. The command
`make odt` will create .odt version of the text. Note that the French
translation is only present as an .odt file.

## GeoGebra files

The figures have been created directly by using the desktop version of
GeoGebra. These sources take place in the [ggb](ggb) folder.

## Planned changes on the Tutorial
* Add references
* Explain the difference between using axes and switching them off
* Explain the difference between attaching a point to a polygon or a segment
* Add icons
* Convert the French .odt file into .tex

## Authors
* Zoltán Kovács <zoltan@geogebra.org>
* Tomás Recio <tomas.recio@unican.es>
* M. Pilar Vélez <pvelez@nebrija.es>

## Translations and translators
* [French](pdf/francais.pdf) by Noël Lambert <noel@geogebra.org>
* [German](pdf/deutsch.pdf) by Katharina Schiffler <katharina.schiffler@ph-linz.at>

## License
GNU General Public License 3
