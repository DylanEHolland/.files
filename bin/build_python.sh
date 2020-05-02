export PYREPO="https://github.com/python/cpython";
export BRANCH="3.8";
export DEPTH="1";

clone_repo() {
    git clone $PYREPO --branch $BRANCH /tmp/python --depth 1;
}

echo "Creating source directory...";
clone_repo &&
mkdir /tmp/build &&
cd /tmp/build &&
/tmp/python/configure --prefix=/tmp/pybuild &&
make -j12 &&
make install