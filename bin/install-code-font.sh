#!/usr/bin/env bash

FONT_URL="https://github.com/adobe-fonts/source-code-pro/releases/download/2.038R-ro%2F1.058R-it%2F1.018R-VAR/TTF-source-code-pro-2.038R-ro-1.058R-it.zip";
FILE_NAME="TTF-source-code-pro-2.038R-ro-1.058R-it.zip";

cd /tmp;
    wget -c "$FONT_URL";
    mkdir /tmp/tmp-fonts;
    cd /tmp/tmp-fonts;
        tar xvf ../$FILE_NAME;
        cp *.ttf /Library/fonts;
    cd -
cd $HOME;
rm -rf /tmp/tmp-fonts;
rm -rf /tmp/$FILE_NAME;