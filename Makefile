LATEX_SRC_PATH=$(PWD)/src

all: syed_nadeem.pdf

%.pdf: src/%.tex
	TEXINPUTS=${LATEX_SRC_PATH}//:${TEXINPUTS} pdflatex $(<) --output-directory build
	TEXINPUTS=${LATEX_SRC_PATH}//:${TEXINPUTS} pdflatex $(<) --output-directory build
	$(MAKE) mostly-clean

clean:
	-rm -fr *.pdf
	$(MAKE) mostly-clean

mostly-clean:
	-rm -fr *.aux
	-rm -fr *.log
	-rm -fr *.nav
	-rm -fr *.out
	-rm -fr *.snm
	-rm -fr *.toc
	-rm -fr build/*.aux
	-rm -fr build/*.log
	-rm -fr build/*.nav
	-rm -fr build/*.out
	-rm -fr build/*.snm
	-rm -fr build/*.toc
	-rm -fr build/*.pdf

.PHONY: clean all
