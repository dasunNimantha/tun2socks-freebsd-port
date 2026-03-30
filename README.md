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

## Submitting to FreeBSD (official process)

The ports collection documents **three** contribution paths; **Bugzilla attachments are preferred**:

| Method | Reference |
|--------|-----------|
| **Bugzilla** (preferred) | [Ports `CONTRIBUTING.md`](https://cgit.freebsd.org/ports/plain/CONTRIBUTING.md) |
| Phabricator | Accepted by some maintainers — see same file |
| GitHub PR to `freebsd/freebsd-ports` | Documented as **experimental**; expect extra delay — [CONTRIBUTING.md](https://cgit.freebsd.org/ports/plain/CONTRIBUTING.md) |

**Recommended steps (from the Porter’s Handbook):**

1. Read [**DOs and DON’Ts**](https://docs.freebsd.org/en/books/porters-handbook/porting-dads/).
2. Test the port: [**Testing the Port**](https://docs.freebsd.org/en/books/porters-handbook/quick-porting/#quick-porting-testing) (`make stage`, `make stage-qa`, `make package`, etc.) and [**portlint**](https://docs.freebsd.org/en/books/porters-handbook/quick-porting/#quick-porting-portlint).
3. Do **not** use **`shar`** — submit a **`git format-patch`** from the base of a ports tree; see [**Submitting the New Port**](https://docs.freebsd.org/en/books/porters-handbook/quick-porting/#porting-submitting) (handbook states shar is no longer accepted).
4. File a PR via [**Bugzilla — submit**](https://bugs.freebsd.org/submit/): **Product** *Ports & Packages*, **Component** *Individual Port(s)*. Summary format: **`[NEW PORT] net/tun2socks …`** (see handbook section above).
5. Track open port PRs: [Bugzilla query — Individual Port(s)](https://bugs.freebsd.org/bugzilla/buglist.cgi?product=Ports%20%26%20Packages&component=Individual%20Port%28s%29&resolution=---).

**Handbook home:** [Porter’s Handbook](https://docs.freebsd.org/en/books/porters-handbook/book/) · **Ports tree (browse):** [cgit.freebsd.org/ports](https://cgit.freebsd.org/ports/)

## Links

- **Upstream:** [github.com/xjasonlyu/tun2socks](https://github.com/xjasonlyu/tun2socks)
- **Official ports contribution policy:** [CONTRIBUTING.md](https://cgit.freebsd.org/ports/plain/CONTRIBUTING.md)
