#!/bin/sh
set -xe
pandoc -t beamer --template=../styles/ohnosequences.beamer --latex-engine=xelatex slides-with-pandoc.md -o slides-with-pandoc.tex
xelatex -shell-escape slides-with-pandoc.tex
xelatex -shell-escape slides-with-pandoc.tex
