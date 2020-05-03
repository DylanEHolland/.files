#!/bin/bash

if ! dnf &> /dev/null; then
	sh dnf-install.sh
fi;

echo "DNF Installed";
sh dnf-init.sh;
sh base-tools.sh;
