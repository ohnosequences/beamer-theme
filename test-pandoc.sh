#!/bin/sh
set -xe
pandoc -t beamer --template=ohnosequences.beamer --latex-engine=xelatex pandoc-test.md -o pandoc-test.tex
xelatex -shell-escape pandoc-test.tex
xelatex -shell-escape pandoc-test.tex
