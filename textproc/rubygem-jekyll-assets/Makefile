# Created by: Ryan Steinmetz <zi@FreeBSD.org>
# $FreeBSD$

PORTNAME=	jekyll-assets
PORTVERSION=	2.1.2
CATEGORIES=	textproc rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Create javascript/CSS assets for Jekyll sites

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	rubygem-fastimage>=1.8:${PORTSDIR}/graphics/rubygem-fastimage \
		rubygem-jekyll>=3.0:${PORTSDIR}/www/rubygem-jekyll \
		rubygem-sprockets3>=3.3:${PORTSDIR}/devel/rubygem-sprockets3 \
		rubygem-sprockets-helpers>=1.2:${PORTSDIR}/devel/rubygem-sprockets-helpers \
		rubygem-tilt>=2.0:${PORTSDIR}/devel/rubygem-tilt

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
