all:
	@-echo make install;

install:
	@-cp -v bashrc.sh ~/.bashrc;
	@-cp -v gitconfig.sh ~/.gitconfig;