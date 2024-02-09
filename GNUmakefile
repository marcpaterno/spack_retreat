all: notes.html spack-crop.pdf remaining_work-final.html

remaining_work.html: spack.svg
remaining_work-final.html: remaining_work.html spack.cmapx
	cat $^ > $@

define exec_error
{ status=$$?; echo "unable to generate $@ from $< with $(1)" 1>&2; exit $$status; }
endef

define PANDOC
pandoc --from markdown-smart -o $@
endef

%.html: %.md
	$(PANDOC) --to html $(PANDOC_OPTS) $< || $(call exec_error,pandoc)

%.pdf: %.md
	$(PANDOC) --to pdf $(PANDOC_OPTS) $< || $(call exec_error,pandoc)

%-crop.pdf: %.pdf
	pdfcrop --margins 5 $< || $(call exec_error,pdfcrop)

%.pdf: %.gv
	dot -T pdf -o $@ $< || $(call exec_error,dot)

%.svg: %.gv
	dot -T svg -o $@ $< || $(call exec_error,dot)

%.cmapx: %.gv
	dot -T cmapx -o $@ $< || $(call exec_error,dot)

%.png: %.gv
	dot -T png -o $@ $< || $(call exec_error,dot)

clean:
	-rm -f *.pdf *.html spack.{cmapx,svg}
