# Created by: Stephen Montgomery-Smith <stephen@math.missouri.edu>
# $FreeBSD$

PORTNAME=	octave-forge-ad
PORTVERSION=	1.0.6
PORTREVISION=	12
CATEGORIES=	math

MAINTAINER=	stephen@FreeBSD.org
COMMENT=	Octave-forge package ${OCTAVE_PKGNAME}

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

GNU_CONFIGURE=	yes
CONFIGURE_ENV+=	HOME=${WRKSRC}
USES=		dos2unix

.include "${.CURDIR}/../../Mk/bsd.octave.mk"

.include <bsd.port.pre.mk>

.if ${OSVERSION} < 1100000
BROKEN=		Doesn't build on FreeBSD 10 or older
.endif

.include <bsd.port.post.mk>
