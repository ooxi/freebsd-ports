# Created by: stephen@math.missouri.edu
# $FreeBSD$

PORTNAME=	open-axiom
PORTVERSION=	1.4.2
PORTREVISION=	3
CATEGORIES=	math
MASTER_SITES=	SF/${PORTNAME}/${PORTVERSION}

MAINTAINER=	stephen@FreeBSD.org
COMMENT=	Computer algebra system

BROKEN=		bootsys goes in an infinite loop during build

BUILD_DEPENDS=	sbcl:${PORTSDIR}/lang/sbcl \
		noweb:${PORTSDIR}/devel/noweb

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-lisp=sbcl
USE_XORG=	x11 ice sm xpm
USES=		gettext iconv gmake tar:bzip2
MAKE_JOBS_UNSAFE=yes
CFLAGS+=	-I${LOCALBASE}/include -L${LOCALBASE}/lib

PLIST_SUB=	AXIOM_VER=${PORTVERSION} GNU_HOST=${CONFIGURE_TARGET}

post-patch:
	${REINPLACE_CMD} 's/test x$$oa_has_qt = xyes/false/' ${WRKSRC}/configure

.include <bsd.port.mk>
