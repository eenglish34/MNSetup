#!bin/bash

# mn install script
sudo su
sudo apt-get install curl g++-aarch64-linux-gnu g++-4.8-aarch64-linux-gnu gcc-4.8-aarch64-linux-gnu binutils-aarch64-linux-gnu g++-arm-linux-gnueabihf g++-4.8-arm-linux-gnueabihf gcc-4.8-arm-linux-gnueabihf binutils-arm-linux-gnueabihf g++-4.8-multilib gcc-4.8-multilib binutils-gold bsdmainutils
wait 20s
sudo apt-get install curl librsvg2-bin libtiff-tools bsdmainutils cmake imagemagick libcap-dev libz-dev libbz2-dev python-setuptools
wait 20s
sudo apt-get install build-essential libtool autotools-dev autoconf pkg-config libssl-dev libzmq5 libzmq3-dev
sudo apt-get install libboost-all-dev
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install -y libdb4.8-dev libdb4.8++-dev libevent-dev
wait 20s
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
sudo apt-get install libqrencode-dev
free
dd if=/dev/zero of=/var/swap.img bs=1024k count=1000
mkswap /var/swap.img
swapon /var/swap.img
free
wait 10s
#chmod +x autogen.sh && chmod +x src/leveldb/build_detect_platform && chmod +x /root/EBM2.0/share/genbuild.sh 
#./autogen.sh && ./configure --disable-tests --disable-bench && make
#wait 30s
#strip src/eblockmaild && strip src/eblockmail-cli && strip src/qt/eblockmail-qt
#sudo cp src/eblockmaild /root/.eblockmail && cp src/eblockmail-cli /root/.eblockmail && cp src/qt/eblockmail-qt /root/.eblockmail

git clone https://github.com/eenglish34/MNSetup

sudo mkdir /root/.eblockmail2

mv MNSetup.zip /root/.eblockmail2

cd /root/.eblockmail2

unzip MNSetup.zip

./eblockmaild -daemon