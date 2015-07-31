COMMIT=`git log | head -n 3`
FILES=$(shell src/builder.py print_tomake)
HTMLS:=  $(patsubst src/q/%,q/%.html,$(wildcard src/q/*))
CSS="style/style.css"

IMAGES=images/pluto_types.svg images/pluto_scatter.svg


all: web tex/capq-booklet.pdf

web: index.html $(HTMLS) src/builder.py


toc.md:		src/builder.py
	src/builder.py print_toc > toc.md


index.html:	toc.md src/preamble.html style/layout.html images style/header.html
	pandoc toc.md \
		--template "style/layout.html" \
		--include-in-header="style/header.html" \
		--include-before-body="src/preamble.html" \
		--css $(CSS) \
		-s  \
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


q/%.html : src/q/%
	pandoc $< \
		--mathjax \
		-s \
		--default-image-extension=svg \
		--template "style/questionlayout.html" \
		--css "../style/style.css" \
		-o $@

clean:
	rm -f index.html
	rm -f tex/capq-booklet.pdf
	rm -f images/*.pdf
	rm -f images/feynman
	rm -f q/*.html	
