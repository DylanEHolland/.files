LOCAL_PACKAGES="$HOME/.local";
PACKAGE_SOURCE="/tmp/cmake";
PACKAGE_REPO="https://github.com/Kitware/CMake";
PACKAGE_RELEASE="release";

git clone $PACKAGE_REPO $PACKAGE_SOURCE --branch=$PACKAGE_RELEASE --depth 1;
cd $PACKAGE_SOURCE &&
./bootstrap --prefix=$LOCAL_PACKAGES &&
make &&
make install;
cd -;
rm -rfv $PACKAGE_SOURCE;