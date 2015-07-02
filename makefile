COMMIT=`git log | head -n 3`

CSS="style/markdown5.css"

all: 	index.html tex/capq-booklet.pdf

index.html:	src/source.md src/preamble.html style/layout.html images/feynman
	pandoc src/source.md \
		--template "style/layout.html" \
		--include-before-body="src/preamble.html" \
		--css $(CSS) \
		-s --toc \
		--mathjax \
		-V version="$(COMMIT)" \
		--default-image-extension=svg \
		-o index.html

tex/capq-booklet.pdf:	src/source.md src/preamble.tex images/feynman
	pandoc src/source.md \
		-s --toc \
		--latex-engine=pdflatex \
		--include-before-body="src/preamble.tex" \
		--default-image-extension=pdf \
		-o tex/capq-booklet.pdf

images/feynman: src/fdiagrams/diagrams.tex
	./compile_feynman.sh
	touch images/feynman

clean:
	rm -f index.html
	rm -f tex/capq-booklet.pdf
	rm -f images/*.pdf
	rm -f images/*.svg
	rm -f images/feynman
	
