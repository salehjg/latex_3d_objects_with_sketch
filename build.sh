
echo "Building example $1 and openning the pdf result. If you think building process has stuck, press x then press enter." 
sketch $1 -o /tmp/$1.tex -T #> /dev/null 2>&1
xelatex -output-directory /tmp/ /tmp/$1.tex #> /dev/null 2>&1
xdg-open /tmp/$1.pdf > /dev/null 2>&1
