default: pdf

kniha.pdf: *.tex *.bib Makefile policia.pdf obecna.pdf
		rm -f *.toc
		pdflatex kniha && bibtex kniha && pdflatex kniha && pdflatex kniha

pdf: kniha.pdf

clean: 
	rm -f *.{log,aux,toc,bbl,blg,slo,srs,pdf,out}

test: kniha.pdf
	okular kniha.pdf 2>/dev/null &

