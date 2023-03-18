# touchbard
Simple and working daemon for configuring Touch Bar mode

This repository contains two programs: `touchbard` and `touchbarctl`.

 * `touchbard`: Daemon that runs in background and communicate with `apple-touchbar` kernel module and userspace.
 * `touchbarctl`: Utility for setting touchbar mode on your terminal. It also shows how programs communicate with `touchbard`.

For protocol documentation, please read [PROTOCOL.md](PROTOCOL.md).

# License
See [LICENSE.md](LICENSE.md). Spoiler alert: It's GPL3.
