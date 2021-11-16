TEX=$(wildcard *.tex)
PDF=$(TEX:.tex=.pdf)

all_clean: $(PDF)
	rm -f *.aux *.bcf *.log *.out *.run.xml *.synctex.gz *.snm include/*.aux chapters/*.aux

all: $(PDF)

%.pdf: %.tex chapters/* include/*
	latexmk -pdf $<

clean:
	rm -f *.aux *.bcf *.log *.out *.run.xml *.synctex.gz *.snm include/*.aux chapters/*.aux

clean_all:
	rm -f *.aux *.bcf *.log *.out *.pdf *.run.xml *.synctex.gz *.snm include/*.aux chapters/*.aux *.nav *.toc *.vrb *.bbl *.blg *.fdb_latexmk *.fls

.PHONY: clean
.PHONY: clean_all
