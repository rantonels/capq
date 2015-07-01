CSS="style/markdown5.css"

all: 	index.html

index.html:	src/source.md src/preamble.html style/layout.html
	pandoc src/source.md \
		--template "style/layout.html" \
		--include-before-body="src/preamble.html" \
		--css $(CSS) \
		-s --toc \
		--mathjax \
		-o index.html
