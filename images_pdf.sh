#convert to pdf
echo "converting svg images to pdf..."

SVGS=$(ls images/*.svg)
for file in $SVGS
do
	inkscape $file --export-pdf=images/"`basename $file .svg`.pdf"
done


