#!/bin/sh

export RASPI="192.168.0.111";
export FOREIGN_USER="dylan";
export RASPI_TOOLS_DIR="/home/$FOREIGN_USER";

scp -rv $FOREIGN_USER@$RASPI:$RASPI_TOOLS_DIR/sys-install/bin ./; 
sh bin/post-install-setup.sh;
sh bin/nvidia.sh;
