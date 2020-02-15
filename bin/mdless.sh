#!/bin/bash

if [ "$1" != "" ]; then
	pandoc -t html $1 | lynx -stdin;
else
	echo "No file passed (syntax: mdless [file.md])";
fi;
