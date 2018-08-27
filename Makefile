define make_pdf
    echo x | pdflatex $(1)
	bibtex $(1)
	echo x | pdflatex $(1)
	echo x | pdflatex $(1)
endef

define clean_pdf
	rm -f $(1).aux 
	rm -f $(1).dvi
	rm -f $(1).bbl
	rm -f $(1).blg
	rm -f $(1).log
	rm -f $(1).out
	rm -f $(1).pdf
	rm -f $(1).synctex.gz
	rm -f *~
endef

# ------------------------------------------------------------------------------
# Full paper definitions
# ------------------------------------------------------------------------------

PAPER=iros-2018-ws-jie

make:
	$(call make_pdf, $(PAPER))
clean:
	$(call clean_pdf, $(PAPER))
x:
	open $(PAPER).pdf
