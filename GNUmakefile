all: notes.html spack-crop.pdf remaining_work.html revised_work.html reference-builds-notes.pdf reduced-workflow-crop.pdf reference-builds-vs-standard-builds.pdf plan-for-standard-builds.pdf elevator_pitch.pdf
pdf: revised_work.pdf

remaining_work.html: spack.svg

# We want "hard-coded" blank checkboxes when we specify.
remaining_work.html: unicode-checkbox.lua
remaining_work.html: PANDOC_OPTS += --lua-filter=unicode-checkbox.lua

# We want smart quotes for this document specifically:
remaining_work.html: PANDOC_MD_EXTS += +smart
revised_work.html: PANDOC_MD_EXTS += +smart

# Most robust way to get the clickable map information into the HTML.
remaining_work.html: spack.cmapx
remaining_work.html: override POSTPROCESS_ACTION = cat $1 spack.cmapx > $2

########################################################################
# No user-serviceable parts below
########################################################################

PANDOC_MD_EXTS=-smart

define exec_error
{ status=$$?; echo "unable to generate $@ from $< with $(1)" 1>&2; exit $$status; }
endef

empty :=
space := $(empty) $(empty)

define join-with
$(subst $(space),$1,$(strip $2))
endef

define POSTPROCESS_ACTION
mv $1 $2
endef

define PANDOC_MARKDOWN
{ pandoc --to $(patsubst .%,%,$(suffix $@)) --from markdown$(call join-with,$(empty),$(PANDOC_MD_EXTS)) $< $(PANDOC_OPTS) -o $@.tmp && $(call POSTPROCESS_ACTION,$@.tmp,$@) && rm -f $@.tmp; } || $(call exec_error,pandoc)
endef

%.html: %.md
	$(call PANDOC_MARKDOWN)

%.pdf: %.md
	pandoc --from markdown --to pdf --pdf-engine=lualatex -o $@ $< || $(call exec_error,pandoc)

%.pdf: %.html
	pandoc --from html --to pdf -o $@ $< || $(call exec_error,pandoc)

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
