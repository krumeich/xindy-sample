if [ $1 = "-c" ]; then
    rm -f xindy-sample.aux xindy-sample.idx xindy-sample.ind \
       xindy-sample.log xindy-sample.out xindy-sample.pdf
fi

pdflatex xindy-sample.tex
texindy -M indexstyle.xdy xindy-sample.idx
pdflatex xindy-sample.tex
