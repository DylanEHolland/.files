#!/bin/bash

rpm --import https://packages.microsoft.com/keys/microsoft.asc;
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo';
dnf -y update;
dnf -y install code;
dnf -y install android-tools;
dnf -y install dnf install -y google-droid-sans-fonts google-droid-serif-fonts google-droid-sans-mono-fonts;
