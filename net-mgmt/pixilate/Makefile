# Created by: Barry Irwin <bvi@moria.org>
# $FreeBSD$

PORTNAME=	pixilate
PORTVERSION=	0.4.2
PORTREVISION=	3
CATEGORIES=	net-mgmt
MASTER_SITES=	SF/winfingerprint/${PORTNAME}/${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Generates packets to match a list of Cisco PIX access lists

LICENSE=	GPLv2+
LICENSE_FILE=	${WRKSRC}/COPYING

LIB_DEPENDS=	libnet.so:${PORTSDIR}/net/libnet

WRKSRC=		${WRKDIR}/pixilate

USES=		autoreconf libtool
GNU_CONFIGURE=	yes

PORTDOCS=	README
PLIST_FILES=	bin/pixilate man/man1/pixilate.1.gz

LIBNET_CONFIG?=	${LOCALBASE}/bin/libnet11-config

OPTIONS_DEFINE=	DOCS

post-patch:
	@cd ${WRKSRC} && ${RM} -f INSTALL install-sh missing mkinstalldirs

	@${REINPLACE_CMD} -e \
		's|libnet-config|${LIBNET_CONFIG}|; \
		 s|--defines`|& `${LIBNET_CONFIG} --cflags`|' \
		${WRKSRC}/configure.ac

post-install:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
