FROM binhex/arch-base

MAINTAINER Mike Kinney <mike.kinney@gmail.com>

RUN pacman -S --noconfirm --needed base-devel boost boost-libs openssl db base-devel qrencode qt5 automoc4 git protobuf

RUN git clone https://github.com/VolvoxCoin/volvox.git /coin/git

WORKDIR /coin/git

RUN ./autogen.sh && ./configure --with-gui=qt5 --with-incompatible-bdb --enable-hardening && make && mv src/VOLVOXd /coin/VOLVOXd

WORKDIR /coin
VOLUME ["/coin/home"]

ENV HOME /coin/home

CMD ["/coin/VOLVOXd"]

# P2P, RPC
EXPOSE 19156 19056
