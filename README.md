# Banana Pi BPI-R4 OpenWrt Image

This repository holds my a mini build environment for **Banana Pi BPI-R4** (based on MediaTek MT7988/Filogic 880) temporary builds as there is no official one yet. Builds are  based on [openwrt/openwrt#14140](https://github.com/openwrt/openwrt/pull/14140).

## Snapshot builds

Snapshot builds are available at https://dl.pi0.io/openwrt/bpi-r4

You can quickly download [sdcard image](openwrt-mediatek-filogic-bananapi_bpi-r4-sdcard.img.gz) and flash it to a SDCard to try (**Note:** Make sure to decompress `.gz` archive first!)

## Useful links

- [Official device's wiki](https://wiki.banana-pi.org/Banana_Pi_BPI-R4)
- [OpenWrt discussion](https://forum.openwrt.org/t/a-new-dual-10g-router-based-on-filogic-880-banana-pi-bpi-r4/163861/103)
- [OpenWrt build system guide](https://openwrt.org/docs/guide-developer/toolchain/use-buildsystem)

## How to build yourself

**Steps:**

- Clone this repository
- Install [Docker](https://www.docker.com/get-started/)
- Start build inside a docker container by running:

```sh
./build.sh scripts/build -j10
```

**Notes:**

- See [`scripts/build`](./scripts/build) for build steps
- You can use `./build.sh` to enter to the manual build env
- Adjust `-j10` according to your CPU cores
- Use `-j1 V=s` to debug build issues
- The build artifacts shall be availabe in `build/bpi-r4/bin` directory