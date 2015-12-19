SOURCE = art-in-machine-learning
make:
	pdflatex -shell-escape $(SOURCE).tex -interaction=batchmode -output-format=pdf # aux-files for makeindex / makeglossaries
	makeglossaries $(SOURCE)
	bibtex $(SOURCE)
	pdflatex -shell-escape $(SOURCE).tex -interaction=batchmode -output-format=pdf # include index
	pdflatex -shell-escape $(SOURCE).tex -interaction=batchmode -output-format=pdf # include symbol table
	pdflatex -shell-escape $(SOURCE).tex -interaction=batchmode -output-format=pdf # include symbol table
	make clean

clean:
	rm -rf $(TARGET) *.class *.html *.aux *.out *.thm *.idx *.toc *.ilg *.glg *.glo *.gls *.ist *.xdy *.fdb_latexmk *.bak *.blg *.glsdefs *.acn *.acr *.alg *.nls *.nlo *.bak *.pyg *.lot *.lof *.xmpdata *.xmpi *.bak
	# rm -rf *.bbl *.ind  # Needed for arxiv
	rm -rf *.log   # Needed for checking