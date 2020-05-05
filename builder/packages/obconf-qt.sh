LOCAL_PACKAGES="$HOME/.local";
PACKAGE_SOURCE="/tmp/cmake";
PACKAGE_REPO="https://github.com/lxqt/obconf-qt";
PACKAGE_RELEASE="releases-0.11.x";

git clone $PACKAGE_REPO $PACKAGE_SOURCE --branch=$PACKAGE_RELEASE --depth 1;
cd $PACKAGE_SOURCE &&
cmake . &&
make &&
make install;
cd -;
rm -rf $PACKAGE_SOURCE;
