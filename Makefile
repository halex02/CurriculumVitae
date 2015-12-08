all : cv.pdf

.PHONY : clean re

cv.dvi :
	latex cv.tex

cv.ps : cv.dvi
	dvips cv.dvi -o

cv.pdf : cv.ps
	ps2pdf cv.ps

clean :
	-rm cv.{aux,log,out,dvi,ps,pdf} 
	-rm *~ \#*

re : clean all
