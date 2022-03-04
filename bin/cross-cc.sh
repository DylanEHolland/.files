rm -rfv binutils* gcc* build-* build;

wget -c https://ftp.gnu.org/gnu/gcc/gcc-11.2.0/gcc-11.2.0.tar.xz;
wget -c https://ftp.gnu.org/gnu/binutils/binutils-2.38.tar.xz;

export TARGET="aarch64-elf";
export PREFIX="$HOME/opt/cross";
export PATH="$PREFIX/bin:$PATH";

tar xvf binutils*;
tar xvf gcc*;

rm *.xz;
cd gcc* && contrib/download_prerequisites && cd -;

mkdir build-binutils
cd build-binutils
../binutils-*/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make -j8;
make -j8 install;
cd ../;

which -- $TARGET-as || echo "$TARGET-as is not in the PATH";
 
mkdir build-gcc
cd build-gcc
../gcc-*/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers
make -j8 all-gcc
make -j8 all-target-libgcc
make -j8 install-gcc
make -j8 install-target-libgcc
cd ../;

echo;echo;echo;echo;echo;
echo === Done ===;
echo;echo;echo;echo;echo;
