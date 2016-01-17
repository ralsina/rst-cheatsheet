.PHONY: default build pdf clean

default: build

clean:
	rm -rf rst-cheatsheet.pdf

build: pdf

pdf: rst-cheatsheet.pdf

rst-cheatsheet.pdf:

%.pdf: %.rst
	rst2pdf "$<" --stylesheets=cheatsheet
