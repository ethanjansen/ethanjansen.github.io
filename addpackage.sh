#!/bin/bash
cd ~/Desktop/github/ethanjansen.github.io/

bzip2 Packages > Packages.bz2
gzip Packages > Packages.gz

git add --all
git commit -m "Added TestModule"
git push
