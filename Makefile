SCRIPTS=./bin/*

all:
	@-echo make install;

install: executable
	@-cp -v bashrc.sh ~/.bashrc;
	@-cp -v zshrc.sh ~/.zshrc;
	@-cp -v gitconfig.sh ~/.gitconfig;
	@-cp -v gitconfig-job.sh ~/.gitconfig-job;
	@-cp -v vimrc ~/.vimrc;
	@-sh code-font.sh;

push:
	@-chmod -x bin/*.sh;

executable:
	@-chmod +x $(SCRIPTS);

unexecutable:
	@-chmod -x $(SCRIPTS);
