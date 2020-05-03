all:
	@-echo make install;

install:
	@-cp -v bashrc.sh ~/.bashrc;
	@-cp -v gitconfig.sh ~/.gitconfig;
	@-cp -v gitconfig-job.sh ~/.gitconfig-job;
	@-chmod +x bin/*.sh;

push:
	@-chmod -x bin/*.sh;