all: notes.html spack-crop.pdf remaining_work.html

define exec_error
{ status=$$?; echo "unable to generate $@ from $< with $(1)" 1>&2; exit $$status; }
endef

define PANDOC
pandoc --from markdown-smart -o $@
endef

%.html: %.md
	$(PANDOC) --to html $< || $(call exec_error,pandoc)

%.pdf: %.md
	$(PANDOC) --to pdf $< || $(call exec_error,pandoc)

%-crop.pdf: %.pdf
	pdfcrop $< || $(call exec_error,pdfcrop)

%.pdf: %.gv
	dot -T pdf -o $@ $< || $(call exec_error,dot)

clean:
	-rm *.pdf *.html
