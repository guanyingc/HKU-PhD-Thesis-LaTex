src = thesis
pdf:
	pdflatex $(src).tex
#open pdf
show:
	xdg-open $(src).pdf
macshow:
	open $(src).pdf

# contain citation 
bib:
	pdflatex -draftmode $(src).tex
	bibtex $(src).aux
	pdflatex -draftmode $(src).tex
	pdflatex $(src).tex
clean:
	rm -f *.aux *.log *.bbl *.blg *.dvi *.nav *.out *.snm *.toc *.brf
