#!/bin/sh
set -xe
pandoc -t beamer --template=styles/ohnosequences.beamer --latex-engine=xelatex $name$.md -o $name$.tex
xelatex -shell-escape $name$.tex
xelatex -shell-escape $name$.tex
