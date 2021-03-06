# Created by: Koop Mast <kwm@FreeBSD.org>
# $FreeBSD$

PORTNAME=	evolution-mapi
PORTVERSION=	3.16.4
CATEGORIES=	mail gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome3

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Evolution Microsoft Exchange plugin through OpenChange

BUILD_DEPENDS=	itstool:${PORTSDIR}/textproc/itstool \
		evolution>=3.0.0:${PORTSDIR}/mail/evolution
LIB_DEPENDS=	libmapi.so:${PORTSDIR}/mail/libmapi
RUN_DEPENDS=	evolution>=3.0.0:${PORTSDIR}/mail/evolution

PORTSCOUT=	limitw:1,even

USES=		gettext gmake libtool pkgconfig tar:xz
USE_GNOME=	intltool
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include -Wno-error=format-nonliteral
CFLAGS+=	-I${LOCALBASE}/include -Wno-error=format-nonliteral
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ARGS+=	--datarootdir=${PREFIX}/share/
INSTALL_TARGET=	install-strip

post-patch:
	@${REINPLACE_CMD} -e 's|(libdir)/pkgconfig|(prefix)/libdata/pkgconfig|g' \
		${WRKSRC}/src/libexchangemapi/Makefile.in
	@${REINPLACE_CMD} -e 's|-Wmissing-include-dirs||g' \
		-e 's|$$(prefix)/$$(DATADIRNAME)/|$$(prefix)/share/|g' \
	    	${WRKSRC}/configure

.include <bsd.port.mk>
