#!/bin/bash

dnf install git rsync lshw python3 -y;
dnf groupinstall "Development Tools" -y;
