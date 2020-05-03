#!/bin/bash

git init;
for n in {1..5};
do
    echo mkdir $n ${{$n + 1}};
done;