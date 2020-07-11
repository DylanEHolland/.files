#!/bin/sh
export PKG_MGR="dnf";
export ESCALATE="sudo";

install_javascript() {
	if ! [ node ]; then
		echo installing node
		#sudo dnf install nodejs npm -y;
	else
		echo "Node already installed";
	fi;

	sudo npm i -g node-fetch react reactstrap;
}

install_python() {
	if ! [ python3 ]; then 
		sudo dnf install python3 python3-pip;
	else
		echo "Python already installed";
	fi;
}

install_heroku() {
	if ! [ -d "$HOME"/.heroku ]; then
		OLDEST_DIR=$PWD;
		cd /tmp &&
		wget -c https://cli-assets.heroku.com/heroku-linux-x64.tar.xz &&
		tar xvf heroku-linux-x64.tar.xz &&
		mv heroku "$HOME/.heroku";
		cd "$OLDEST_DIR" || exit;
	else
		echo "Heroku already installed";
	fi;
}

install_poetry() {
	if ! [ -d "$HOME"/.poetry ]; then
		curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python; # Poetry (python packager)
	else
		echo "Poetry already installed";
	fi;
}

install_docker() {
	sudo dnf install dnf-plugins-core -y;
	sudo dnf config-manager --add-repo "https://download.docker.com/linux/fedora/docker-ce.repo";
	$ESCALATE $PKG_MGR install docker-ce docker-ce-cli containerd.io -y;
	$ESCALATE systemctl enable --now docker;
	$ESCALATE groupadd docker;
}

install_packages() {
	$ESCALATE $PKG_MGR install pandoc lynx firefox vim python3 python3-pip markdown nmap -y &&
	$ESCALATE $PKG_MGR group install "Development Tools" -y;
}

$ESCALATE  $PKG_MGR update -y;
$ESCALATE  $PKG_MGR install epel-release -y;
$ESCALATE  $PKG_MGR install --nogpgcheck https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y;
$ESCALATE  $PKG_MGR install --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-8.noarch.rpm https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-8.noarch.rpm -y;
$ESCALATE $PKG_MGR config-manager --enable PowerTools;


install_packages;
#install_javascript;
#install_python;
#install_poetry;
#install_heroku;
#install_docker;
