# tun2socks FreeBSD Port

FreeBSD port for [tun2socks](https://github.com/xjasonlyu/tun2socks) — a tool that tunnels TCP/UDP traffic through a SOCKS5/HTTP proxy via a TUN interface, powered by gVisor's userspace TCP/IP stack.

## Port Details

| Field | Value |
|---|---|
| **Category** | `net` |
| **Version** | 2.6.0 |
| **License** | MIT |
| **Maintainer** | dasun4@pm.me |

## Status

This port is being prepared for submission to the [FreeBSD ports tree](https://cgit.freebsd.org/ports/). A CI workflow tests the build on FreeBSD 14.2 using [vmactions/freebsd-vm](https://github.com/vmactions/freebsd-vm).

## Port Files

```
Makefile      - Build instructions
pkg-descr     - Package description
pkg-plist     - Installed file list
distinfo      - Source tarball checksums (generate with `make makesum`)
```

## Testing Locally

On a FreeBSD system with the ports tree:

```bash
# Copy port files
mkdir -p /usr/ports/net/tun2socks
cp Makefile pkg-descr pkg-plist /usr/ports/net/tun2socks/

# Generate checksums
cd /usr/ports/net/tun2socks
make makesum

# Build and test
make
make stage
make check-plist
make package
```

## Links

- **Upstream:** [github.com/xjasonlyu/tun2socks](https://github.com/xjasonlyu/tun2socks)
- **FreeBSD Porter's Handbook:** [docs.freebsd.org](https://docs.freebsd.org/en/books/porters-handbook/book/)
