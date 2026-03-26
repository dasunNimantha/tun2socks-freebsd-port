PORTNAME=	tun2socks
DISTVERSIONPREFIX=	v
DISTVERSION=	2.6.0
CATEGORIES=	net

MAINTAINER=	dasun4@pm.me
COMMENT=	Tunnel TCP/UDP traffic through a SOCKS5/HTTP proxy via TUN interface
WWW=		https://github.com/xjasonlyu/tun2socks

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		go:modules

USE_GITHUB=	yes
GH_ACCOUNT=	xjasonlyu

GO_MODULE=	github.com/xjasonlyu/tun2socks/v2
GO_TARGET=	.
GO_BUILDFLAGS=	-ldflags="-w -s \
		-X ${GO_MODULE}/internal/version.Version=v${DISTVERSION}"

PLIST_FILES=	bin/${PORTNAME}

.include <bsd.port.mk>
