mkdir -p docs
mv *.pdf docs

# Fixes some graphical bugs with the transparent logo.

gs -dSAFER -dBATCH -dNOPAUSE -dNOCACHE -sDEVICE=pdfwrite \
-dAutoFilterColorImages=true \
-dAutoFilterGrayImages=true \
-dDownsampleMonoImages=true \
-dDownsampleGrayImages=true \
-dDownsampleColorImages=true \
-sOutputFile=docs/UD-reglemente.pdf UD-reglemente.pdf 

gs -dSAFER -dBATCH -dNOPAUSE -dNOCACHE -sDEVICE=pdfwrite \
-dAutoFilterColorImages=true \
-dAutoFilterGrayImages=true \
-dDownsampleMonoImages=true \
-dDownsampleGrayImages=true \
-dDownsampleColorImages=true \
-sOutputFile=docs/UD-stadgar.pdf UD-stadgar.pdf

gs -dSAFER -dBATCH -dNOPAUSE -dNOCACHE -sDEVICE=pdfwrite \
-dAutoFilterColorImages=true \
-dAutoFilterGrayImages=true \
-dDownsampleMonoImages=true \
-dDownsampleGrayImages=true \
-dDownsampleColorImages=true \
-sOutputFile=docs/UD-gdpr.pdf UD-gdpr.pdf
