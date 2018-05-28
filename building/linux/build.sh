./autogen.sh
./configure --with-gui=qt5 --with-incompatible-bdb
make clean
make check
# For debug fun
cat src/test-suite.log
