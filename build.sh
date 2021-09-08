
mkdir docs

# Make rule a phony by removing old .pdf
rm -f temp.pdf

# Make a copy of .tex file in order to change output file name
cp $1.tex temp.tex

# Compile two .pdfs:
# one called temp.pdf which is an intermittent step
# and one called the same as the input file, which is the first parameter
# protip: bookmark ~/path/workspace/temp.pdf for easy viewing while working
latexmk -f -interaction=nonstopmode -pdf temp.tex

gs -dSAFER -dBATCH -dNOPAUSE -dNOCACHE -sDEVICE=pdfwrite \
-dAutoFilterColorImages=true \
-dAutoFilterGrayImages=true \
-dDownsampleMonoImages=true \
-dDownsampleGrayImages=true \
-dDownsampleColorImages=true \
-sOutputFile=$1.pdf temp.pdf

# Remove the copied .tex file
rm temp.tex

# Let latexmk clean up.
# This doesn't seem to do anything, use make clean instead.
latexmk -c
