TEX=$(wildcard *.tex)
PDF=$(TEX:.tex=.pdf)

all_clean: $(PDF)
	rm -f *.aux *.bcf *.log *.out *.run.xml *.synctex.gz *.snm

all: $(PDF)

%.pdf: %.tex
	pdflatex $<

clean:
	rm -f *.aux *.bcf *.log *.out *.run.xml *.synctex.gz *.snm

clean_all:
	rm -f *.aux *.bcf *.log *.out *.pdf *.run.xml *.synctex.gz *.snm

.PHONY: clean
.PHONY: clean_all
