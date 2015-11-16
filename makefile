COMMIT=`git log | head -n 3`
FILES=$(shell src/builder.py print_tomake)
HTMLS:=  $(patsubst src/q/%.md,q/%.html,$(wildcard src/q/*))
CSS="style/style.css"

IMAGES=images/pluto_types.svg images/pluto_scatter.svg


all: web tex/capq-booklet.pdf

web: index.html $(HTMLS) src/builder.py style/style.css


toc.md:		src/builder.py
	src/builder.py print_toc > toc.md


index.html:	toc.md src/preamble.html style/layout.html images style/header.html
	pandoc toc.md \
		--template "style/layout.html" \
		--include-in-header="style/header.html" \
		--include-before-body="src/preamble.html" \
		--css $(CSS) \
		-s  \
		--mathjax="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" \
		-V version="$(COMMIT)" \
		--default-image-extension=svg \
		-o index.html

tex/capq-booklet.pdf:	src/fullsource.md src/preamble.tex images/pdf
	mkdir -p tex
	cd src && pandoc fullsource.md \
		-s --toc \
		--latex-engine=xelatex \
		--include-in-header="header.tex" \
		--include-before-body="preamble.tex" \
		--default-image-extension=pdf \
		-o ../tex/capq-booklet.pdf

images: $(IMAGES) images/feynman

images/feynman: src/fdiagrams/diagrams.tex
	./compile_feynman.sh
	touch images/feynman

images/pdf: images/feynman images
	./images_pdf.sh
	touch images/pdf


q/%.html : src/q/%.md style/questionlayout.html images
	pandoc $< \
		--mathjax="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" \
		-s \
		--default-image-extension=svg \
		--template "style/questionlayout.html" \
		--css "../style/style.css" \
		-o $@

src/fullsource.md: $(wildcard src/q/*) src/builder.py
	src/builder.py joined_source > src/fullsource.md	 


style/style.css: style/style.less
	lessc style/style.less > style/style.css


clean:
	rm -f index.html
	rm -f tex/capq-booklet.pdf
	rm -f images/*.pdf
	rm -f images/feynman
	rm -f q/*.html	
