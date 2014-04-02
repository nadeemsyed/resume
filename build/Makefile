LATEX_SRC_PATH=$(pwd)/../src

all: JesseCook.pdf JeffCroxell.pdf RoberReiher.pdf RebeccaSkinner.pdf

%.pdf: %.tex
	pdflatex ${LATEX_SRC_PATH}/$(<)
	pdflatex ${LATEX_SRC_PATH}/$(<)

clean:
	-rm -fr *.aux
	-rm -fr *.log
	-rm -fr *.nav
	-rm -fr *.out
	-rm -fr *.snm
	-rm -fr *.toc
	-rm -fr *.pdf

.PHONY: clean all
