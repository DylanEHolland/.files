Update the system:
$ sudo apt update

Install required packages:
$ sudo apt install git && build-essential

Download the driver:
$ sudo git clone https://github.com/gnab/rtl8812au

Go to the directory:
$ cd rtl8812au

Do the next commands consecutively:
$ sudo make clean
$ sudo make
$ sudo make uninstall
$ sudo make install