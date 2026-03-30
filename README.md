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

Prepared for submission to the [FreeBSD ports tree](https://cgit.freebsd.org/ports/). CI builds the port on **FreeBSD 14.3** with [vmactions/freebsd-vm](https://github.com/vmactions/freebsd-vm).

## Port Files

| File | Purpose |
|------|---------|
| `Makefile` | Build instructions (`PLIST_FILES=bin/tun2socks`; no separate `pkg-plist`) |
| `pkg-descr` | Long package description |
| `distinfo` | Checksums for the source tarball (regenerate with `make makesum` after version bumps) |

## Testing Locally

On a FreeBSD system with the ports tree:

```bash
mkdir -p /usr/ports/net/tun2socks
cp Makefile pkg-descr distinfo /usr/ports/net/tun2socks/   # or omit distinfo and run makesum

cd /usr/ports/net/tun2socks
make makesum    # if distinfo missing or version changed

make DISABLE_VULNERABILITIES=yes stage
make check-plist
make package
```

## Releases

Git tags match the **upstream** tun2socks version this port tracks (e.g. `v2.6.0`). See [GitHub Releases](https://github.com/dasunNimantha/tun2socks-freebsd-port/releases).

## Links

- **Upstream:** [github.com/xjasonlyu/tun2socks](https://github.com/xjasonlyu/tun2socks)
- **FreeBSD Porter's Handbook:** [docs.freebsd.org](https://docs.freebsd.org/en/books/porters-handbook/book/)
