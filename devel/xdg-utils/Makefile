# Created by: Michael Johnson <ahze@FreeBSD.org>
# $FreeBSD$

PORTNAME=	xdg-utils
PORTVERSION=	1.0.2.${SNAPDATE}
PORTREVISION=	3
CATEGORIES=	devel
#MASTER_SITES=	http://portland.freedesktop.org/download/
MASTER_SITES=	LOCAL/kwm

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Tools to allow all applications to integrate with the free desktop

RUN_DEPENDS=	${LOCALBASE}/share/icons/hicolor/index.theme:${PORTSDIR}/misc/hicolor-icon-theme \
		xprop:${PORTSDIR}/x11/xprop \
		xset:${PORTSDIR}/x11/xset

SNAPDATE=	20130919
USES=		tar:xz
GNU_CONFIGURE=	yes

post-patch:
	@${REINPLACE_CMD} -e 's|%%LOCALBASE%%|${LOCALBASE}|' \
		${WRKSRC}/scripts/xdg-*

.include <bsd.port.mk>
