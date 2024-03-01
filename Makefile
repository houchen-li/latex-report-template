main.pdf: coverpage/coverpage.pdf main.bbl main.nls main.tex data/*.tex ref/refs.bib
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -xelatex main.tex

coverpage/coverpage.pdf: coverpage/coverpage.tex
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -xelatex -outdir=coverpage coverpage/coverpage.tex

main.aux: main.tex data/*.tex ref/refs.bib
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -xelatex main.tex

main.bbl: ref/refs.bib main.aux
	bibtex main

main.nls: data/00-nomenclature.tex
	makeindex -s nomencl.ist -o main.nls main.nlo

