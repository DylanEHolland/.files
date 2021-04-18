#!/bin/bash

cd /tmp;
mkdir -pv ~/.fonts;
wget -c https://github.com/adobe-fonts/source-code-pro/archive/refs/tags/2.038R-ro/1.058R-it/1.018R-VAR.tar.gz;
tar xvf 1.018R-VAR.tar.gz;
cp -v /tmp/source-code-pro-2.038R-ro-1.058R-it-1.018R-VAR/OTF/*.otf ~/.fonts;
rm -rf /tmp/source-code-pro-2.038R-ro-1.058R-it-1.018R-VAR 1.018R-VAR.tar.gz;
cd -;
cd ~/;
fc-cache -f -v;
