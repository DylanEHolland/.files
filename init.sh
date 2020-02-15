install_javascript() {
	if ! [ node ]; then
		sudo dnf install nodejs npm -y;
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
	if ! [ -d $HOME/.heroku ]; then
		OLDEST_DIR=$PWD;
		cd /tmp &&
		wget -c https://cli-assets.heroku.com/heroku-linux-x64.tar.xz &&
		tar xvf heroku-linux-x64.tar.xz &&
		mv heroku $HOME/.heroku;
		cd $OLDEST_DIR;
	else
		echo "Heroku already installed";
	fi;
}

install_poetry() {
	if ! [ -d $HOME/.poetry ]; then
		curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python; # Poetry (python packager)
	else
		echo "Poetry already installed";
	fi;
}

install_packages() {
	sudo dnf install pandoc lynx firefox vim python3 python3-pip -y &&
	sudo group install "Development Tools" -y;
}

sudo dnf update -y;
install_packages;
#install_javascript;
#install_python;
#install_poetry;
#install_heroku;
