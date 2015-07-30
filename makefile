COMMIT=`git log | head -n 3`

CSS="style/markdown5.css"

IMAGES=images/pluto_types.svg images/pluto_scatter.svg

all: 	index.html tex/capq-booklet.pdf

index.html:	src/source.md src/preamble.html style/layout.html images style/header.html
	pandoc src/source.md \
		--template "style/layout.html" \
		--include-in-header="style/header.html" \
		--include-before-body="src/preamble.html" \
		--css $(CSS) \
		-s --toc \
		--mathjax \
		-V version="$(COMMIT)" \
		--default-image-extension=svg \
		-o index.html

tex/capq-booklet.pdf:	src/source.md src/preamble.tex images/pdf
	pandoc src/source.md \
		-s --toc \
		--latex-engine=xelatex \
		--include-before-body="src/preamble.tex" \
		--default-image-extension=pdf \
		-o tex/capq-booklet.pdf

images: $(IMAGES) images/feynman

images/feynman: src/fdiagrams/diagrams.tex
	./compile_feynman.sh
	touch images/feynman

images/pdf: images/feynman images
	./images_pdf.sh
	touch images/pdf

clean:
	rm -f index.html
	rm -f tex/capq-booklet.pdf
	rm -f images/*.pdf
	rm -f images/feynman
	
