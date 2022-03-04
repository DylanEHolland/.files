#!/usr/bin/env bash

for b in `git branch -l | grep -v master | grep -v \*`; do git branch -D "$b"; done;