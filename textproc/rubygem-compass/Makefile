# Created by: Jason Helfman <jhelfman@experts-exchange.com>
# $FreeBSD$

PORTNAME=	compass
PORTVERSION=	1.0.3
CATEGORIES=	textproc ruby
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Provides an open-source CSS authoring framework

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE.markdown

RUN_DEPENDS=	rubygem-chunky_png>=1.2:${PORTSDIR}/graphics/rubygem-chunky_png \
		rubygem-compass-core>=1.0.2:${PORTSDIR}/textproc/rubygem-compass-core \
		rubygem-compass-import-once>=1.0.5:${PORTSDIR}/textproc/rubygem-compass-import-once \
		rubygem-rb-fsevent>=0.9.3:${PORTSDIR}/devel/rubygem-rb-fsevent \
		rubygem-rb-inotify>=0.9:${PORTSDIR}/devel/rubygem-rb-inotify \
		rubygem-sass>=3.3.13:${PORTSDIR}/textproc/rubygem-sass

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

PLIST_FILES=	bin/compass

.include <bsd.port.mk>
