SCRIPTS=./bin/*
BASE_SYSTEM=`uname`

all:
	@-echo make install;

install: executable
	@-cp -v sh/bashrc.sh ~/.bashrc;
	@-cp -v sh/zshrc.sh ~/.zshrc;
	@-cp -v sh/vimrc ~/.vimrc;

	@-sh bin/install-code-font.sh;
	@-sh bin/init.sh;

push:
	@-chmod -x bin/*.sh;

executable:
	@-chmod +x $(SCRIPTS);

unexecutable:
	@-chmod -x $(SCRIPTS);
