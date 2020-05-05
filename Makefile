SCRIPTS=./bin/* ./builder/programs/* ./installer/{*.sh,bin/*}

all:
	@-echo make install;

install: executable
	@-cp -v bashrc.sh ~/.bashrc;
	@-cp -v gitconfig.sh ~/.gitconfig;
	@-cp -v gitconfig-job.sh ~/.gitconfig-job;

push:
	@-chmod -x bin/*.sh;

executable:
	@-chmod +x $(SCRIPTS);

unexecutable:
	@-chmod -x $(SCRIPTS);