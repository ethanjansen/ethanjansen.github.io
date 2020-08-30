#!/bin/bash
cd ~/Desktop/github/ethanjansen.github.io/

bzip2 -fk Packages > Packages.bz2
gzip -fk Packages > Packages.gz

git add --all
git commit -m "Added TestModule"
git push
