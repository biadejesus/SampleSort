INSTALL=sudo apt-get install
LATEX=texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra texlive-publishers texlive-humanities

all: relatorio

relatorio:

	@$(INSTALL) $(LATEX)
	@(cd IEEEtran && pdflatex --shell-escape relatorio.tex && bibtex bare_jrnl)
	@(cd IEEEtran && pdflatex --shell-escape relatorio.tex)
	@(cd IEEEtran && mv relatorio.pdf ../Projeto_1-PC.pdf)

clean: 
	$(RM) relatorio