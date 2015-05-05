all : cv.pdf

.PHONY : clean realclean re view

cv.dvi :
	latex cv.tex

cv.ps : cv.dvi
	dvips cv.dvi -o

cv.pdf : cv.ps
	ps2pdf cv.ps

clean :
	-rm cv.aux cv.log cv.out
	-rm cv.dvi cv.ps
	-rm *~

realclean : clean
	-rm cv.pdf

re : realclean cv.pdf

view :
	xpdf cv.pdf
