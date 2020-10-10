INSTALL=sudo apt-get install
LATEX=texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra texlive-publishers texlive-humanities

all: relatorio

relatorio:
	@$(INSTALL) $(LATEX)
	@(cd tex && pdflatex bare_jrnl.tex && bibtex bare_jrnl)
	@(cd tex && pdflatex bare_jrnl.tex)
	@(cd tex && pdflatex bare_jrnl.tex)
	@(cd tex && mv bare_jrnl.pdf ../Projeto_1-PC.pdf)

clean: 
	$(RM) relatorio