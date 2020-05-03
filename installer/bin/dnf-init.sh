#!/bin/bash

RPM_FUSION="https://download1.rpmfusion.org";
RPM_FUSION_FREE="/free/el/rpmfusion-free-release-7.noarch.rpm";
RPM_FUSION_NONFREE="/nonfree/el/rpmfusion-nonfree-release-7.noarch.rpm";

dnf install $RPM_FUSION$RPM_FUSION_FREE -y;
dnf install $RPM_FUSION$RPM_FUSION_NONFREE -y;
dnf update -y;
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo;