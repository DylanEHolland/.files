SCRIPTS=./bin/*
BASE_SYSTEM=`uname`

all:
	@-echo make install;

install: executable
	@-cp -v bashrc.sh ~/.bashrc;
	@-cp -v zshrc.sh ~/.zshrc;
	@-cp -v gitconfig.sh ~/.gitconfig;
	@-cp -v vimrc ~/.vimrc;

	@if [ "$(BASE_SYSTEM)" = "Linux" ]; then cp -v gitconfig-job.sh ~/.gitconfig-job; fi;
	@if [ "$(BASE_SYSTEM)" = "Linux" ]; then sh code-font.sh; fi;

push:
	@-chmod -x bin/*.sh;

executable:
	@-chmod +x $(SCRIPTS);

unexecutable:
	@-chmod -x $(SCRIPTS);
