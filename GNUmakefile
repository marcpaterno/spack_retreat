all: notes.html spack-crop.pdf

notes.html: notes.txt
	pandoc --from markdown-smart  -o $@ --to html $<

spack-crop.pdf: spack.pdf
	pdfcrop $<

spack.pdf: spack.gv
	dot  -T pdf -o $@ $<

clean:
	rm notes.html spack.pdf spack-crop.pdf
