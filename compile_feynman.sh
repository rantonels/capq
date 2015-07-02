#!/bin/bash

# compile fdiagrams .tex
cd src/fdiagrams && latex diagrams.tex


# run mpost on each file
echo "MPOST..."

MPS=$(ls *.mp)

for file in $MPS
do
	echo $file
	mpost $file
done


# convert .1 files into .ps (because they actually are EPS files)
echo "RENAME..."
ONS=$(ls *.1)

for file in $ONS; do \
	cp "$file" "`basename $file .1`.ps"
done


# inkscape-convert EPS -> SVG
echo "EPS->SVG..."
PSS=$(ls *.ps)

for file in $PSS
do
	inkscape -f $file --export-plain-svg="`basename $file .ps`.svg"
done


# autocrop SVG
echo "AUTOCROP..."
inkscape --verb=FitCanvasToDrawing --verb=FileSave --verb=FileClose *.svg


# move to images/ and cleanup
cd ../../

mv src/fdiagrams/*.svg images/ -v
rm -f src/fdiagrams/*.log
rm -f src/fdiagrams/*.dvi
rm -f src/fdiagrams/*.aux
rm -f src/fdiagrams/*.mp
rm -f src/fdiagrams/*.svg
rm -f src/fdiagrams/*.ps
rm -f src/fdiagrams/*.1


#convert to pdf
echo "CONVERTO TO PDF..."

SVGS=$(ls images/*.svg)
for file in $SVGS
do
	inkscape $file --export-pdf=images/"`basename $file .svg`.pdf"
done

echo "FEYNMAN DIAGRAMS DONE."
