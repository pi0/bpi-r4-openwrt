FROM ubuntu

# https://openwrt.org/docs/guide-developer/toolchain/install-buildsystem

RUN apt update && apt dist-upgrade -fy && apt install -fy build-essential ccache ecj fastjar file g++ gawk \
gettext git java-propose-classpath libelf-dev libncurses5-dev \
libncursesw5-dev libssl-dev python2.7-dev python3 unzip wget \
python3-distutils python3-setuptools python3-dev rsync subversion \
swig time xsltproc zlib1g-dev htop vim gcc-multilib libpam-dev liblzma-dev libsnmp-dev

WORKDIR /build

ENV FORCE_UNSAFE_CONFIGURE=1
ENV PIP_ROOT_USER_ACTION=ignore

