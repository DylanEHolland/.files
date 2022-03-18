#!/usr/bin/env bash

OH_MY_ZSH_URL="https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh"

sh -c "$(curl -fsSL $OH_MY_ZSH_URL)" 1>/dev/null || echo "Already installed"