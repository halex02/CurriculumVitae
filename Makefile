all : cv.pdf

.PHONY : clean re

cv.dvi :
	latex cv.tex

cv.ps : cv.dvi
	dvips cv.dvi -o

cv.pdf : cv.ps
	ps2pdf cv.ps

clean :
	-rm cv.aux cv.log cv.out cv.dvi cv.ps cv.pdf 
	-rm *~ \#*

re : clean all
