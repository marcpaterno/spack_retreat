all: notes.html spack-crop.pdf remaining_work-final.html

remaining_work.html: spack.svg

# We want "hard-coded" blank checkboxes when we specify.
remaining_work.html: unicode-checkbox.lua
remaining_work.html: PANDOC_OPTS += --lua-filter=unicode-checkbox.lua

# Most robust way to get the clickable map information into the HTML.
remaining_work-final.html: remaining_work.html spack.cmapx
	cat $^ > $@

########################################################################
# No user-serviceable parts below
########################################################################

define exec_error
{ status=$$?; echo "unable to generate $@ from $< with $(1)" 1>&2; exit $$status; }
endef

empty :=
space := $(empty) $(empty)

define join-with
$(subst $(space),$1,$(strip $2))
endef

define PANDOC
pandoc --from markdown-smart -o $@
endef

%.html: %.md
	$(PANDOC) --to html --from markdown$(call join-with,$(empty),$(PANDOC_MD_EXTS)) $(PANDOC_OPTS) $< || $(call exec_error,pandoc)

%.pdf: %.md
	$(PANDOC) --to pdf --from markdown$(call join-with,$(empty),$(PANDOC_MD_EXTS)) $(PANDOC_OPTS) $< || $(call exec_error,pandoc)

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
