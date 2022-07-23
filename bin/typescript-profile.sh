#!/bin/bash

br() {
    echo;
    echo;
}

hr() {
    br && echo === && br;
}

# probably should loop through all files and run this, then dedup
# dpdm src/pages/index.tsx; # this is a supervised command


ts-prune --project tsconfig.json | grep -v '(used in module)'
ts-unused-exports tsconfig.json --allowUnusedTypes

