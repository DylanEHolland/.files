#!/bin/bash

dnf update -y;
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo;