TEX=$(wildcard *.tex)
PDF=$(TEX:.tex=.pdf)

all: $(PDF)
	echo $^

%.pdf: %.tex
	pdflatex $<

clean:
	rm -f *.aux *.bcf *.log *.out *.run.xml *.synctex.gz

clean_all:
	rm -f *.aux *.bcf *.log *.out *.pdf *.run.xml *.synctex.gz

.PHONY: clean
.PHONY: clean_all
