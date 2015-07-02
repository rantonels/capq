CAPQ
====

The Constantly Asked Physics Questions is my personal FAQ for physics questions. It's in early development. It's available [here](https://rantonels.github.io/capq).

It is simultaneously built as an .html page and a .pdf booklet with pandoc.

You can contribute your own question+answer pairs. Just clone, edit the file `src/source.md` and give me a pull request.

`src/source.md` is a markdown file, so it's really easy to write answers. You can add inline and not-inline math with MathJax syntax. Just read a bit of how the other questions are formatted and especially the title header.

Build instructions
------------------

Prerequisites for building:

- pandoc
- working latex environment

and only if you plan on editing `src/fdiagrams/diagrams.tex` for Feynman diagrams:

- feynfm (as in: you managed to use it at least once)
- mpost
- inkscape

to build the webpage + pdf, `cd` to the project folder and run `make`. If you need to rebuild the Feynman diagrams (only, again, if you edited `src/fdiagrams/diagrams.tex`), you're going to see a swarm of inkscape windows flash on the screen. Ignore him, he's weird.
