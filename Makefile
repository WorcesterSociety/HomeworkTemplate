example: example.tex awe-homework.cls
	xelatex -shell-escape example

clean:
	rm -rf *.pdf *.log *.aux *.dvi *.out *.cpt _minted-*
