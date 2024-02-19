> [!NOTE]
> Official [snapshots](https://downloads.openwrt.org/snapshots/targets/mediatek/filogic/) are now available! Also, see [device page](https://openwrt.org/inbox/toh/sinovoip/bananapi_bpi-r4), [snapshot notes](https://openwrt.org/releases/snapshot) and [merge commit](https://git.openwrt.org/?p=openwrt/openwrt.git;a=commitdiff;h=f16dc4b42fb265affb2298e815a7ce0a13d60da6).

# Banana Pi BPI-R4 OpenWrt Image

This repository holds my a mini build environment for **Banana Pi BPI-R4** (based on MediaTek MT7988/Filogic 880) temporary builds as there is no official one yet. Builds are  based on [openwrt/openwrt#14140](https://github.com/openwrt/openwrt/pull/14140).

## Snapshot builds

Snapshot builds are available at https://dl.pi0.io/openwrt/bpi-r4

Look for latest `sdcard` variant here for quick start: https://dl.pi0.io/openwrt/bpi-r4/targets/mediatek/filogic

## Useful links

- [Official device's wiki](https://wiki.banana-pi.org/Banana_Pi_BPI-R4)
- [OpenWrt discussion](https://forum.openwrt.org/t/a-new-dual-10g-router-based-on-filogic-880-banana-pi-bpi-r4/163861/112)
- [OpenWrt build system guide](https://openwrt.org/docs/guide-developer/toolchain/use-buildsystem)

## How to build yourself

**Steps:**

- Clone this repository
- Install [Docker](https://www.docker.com/get-started/)
- Start building inside a docker container by running:

```sh
./build.sh scripts/build -j10
```

**Notes:**

- See [scripts/build](./scripts/build) for build steps
- You can use `./build.sh` to enter the manual build env
- Adjust `-j10` according to your CPU cores
- Use `-j1 V=s` to debug build issues
- The build artifacts shall be available in `build/bpi-r4/bin` directory
