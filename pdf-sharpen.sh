#!/bin/zsh

input=$1
output=$2

echo "Converting PDF to PNG.."
convert -density 150x150 $input -quality 0 $output.png

echo "sharpen plugin to PNG's.."
gimp -i -b '(sharpen "*.png" 50)' -b '(gimp-quit 0)' 

echo "Counting files.."
declare -i count=0

for i in $(ls *.png)
do
    count=$(($count + 1))
done

count=$(($count - 1))

echo "Converting to PDF.."
convert $output-{0..$count}.png $output.pdf

echo "Optimizing PDF..."
ps2pdf -dPDFSETTINGS=/prepress $output.pdf $output-final.pdf

echo "Cleaning.."
rm *.png

echo "End."
