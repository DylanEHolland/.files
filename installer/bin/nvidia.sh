#!/bin/bash
GFX_FILE="NVIDIA-Linux-x86_64-435.21.run";

disable_nouveau() {
	echo disable nouveau;
	echo "blacklist nouveau" >> /etc/modprobe.d/blacklist.conf;
}

setup_graphics() {
	echo "Building graphics workstation";
	rsync -hvuazrP $FOREIGN_USER@$RASPI:$RASPI_TOOLS_DIR/Downloads/$GFX_FILE ./;
	systemctl isolate multi-user.target;
	sh $GFX_FILE;
}

setup_cuda() {
	echo "Building machine learning workstation";
}

setup_x_window() {
	dnf groupinstall "X Window System" -y;
	dnf install openbox xfce4-{session,notifyd,mixer,settings,taskmanager,{notes,datetime,whiskermenu,mount}-plugin,panel,terminal} gnome-{terminal,session} -y;
}

setup_x_window;
#disable_nouveau;
#setup_graphics;
#setup_cuda;
