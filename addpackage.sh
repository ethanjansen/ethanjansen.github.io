#!/bin/bash
cd ~/Desktop/github/ethanjansen.github.io/

bzip2 -f Packages > Packages.bz2
gzip -f Packages > Packages.gz

git add --all
git commit -m "Added TestModule"
git push
