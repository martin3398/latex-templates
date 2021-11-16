TEX=$(wildcard *.tex)
PDF=$(TEX:.tex=.pdf)

all_clean: $(PDF)
	rm -f *.aux *.bcf *.log *.out *.run.xml *.synctex.gz *.snm include/*.aux chapters/*.aux

all: $(PDF)

%.pdf: %.tex
	pdflatex $<

clean:
	rm -f *.aux *.bcf *.log *.out *.run.xml *.synctex.gz *.snm include/*.aux chapters/*.aux

clean_all:
	rm -f *.aux *.bcf *.log *.out *.pdf *.run.xml *.synctex.gz *.snm include/*.aux chapters/*.aux *.nav *.toc *.vrb

.PHONY: clean
.PHONY: clean_all
