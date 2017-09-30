# PDF Processing

## What this script do?
Some time the when you create a pdf from scanned documents, it is possible to get blury images and is hard to read.

## How to Solve?
My solution was use software installed on my computer, ImageMagic, Gimp and Ghostscript. It's a very simple script but make a things simple. Also develope a small script for Gimp that make the magic to the images to the PDF's.

## Dependencies
You may need to get installed:
 - ZSH
 - ImageMagick 6.8.8-1
 - Gimp 2.8
 - Ghostscript 9.15
Aviables on all distributions.

## Isntalation
1. Install Gimp script

'''sh
cp sharpen.scm ~/.gimp-2.8/scripts/
'''

'''sh
    cp pdf-sharpen.sh ~/bin/
'''
