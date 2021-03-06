# $FreeBSD$

PORTNAME=	openbsc
PORTVERSION=	0.15.0
PORTREVISION=	1
CATEGORIES=	net
MASTER_SITES=	http://git.osmocom.org/${PORTNAME}/snapshot/ \
		http://chaosophia.net/downloads/osmocom/${PORTNAME}/

MAINTAINER=	koue@chaosophia.net
COMMENT=	GSM network in a box software

LICENSE=	GPLv3

LIB_DEPENDS=	libdbi.so:${PORTSDIR}/databases/libdbi \
		libosmocore.so:${PORTSDIR}/devel/libosmocore \
		libosmoabis.so:${PORTSDIR}/devel/libosmo-abis \
		libosmonetif.so:${PORTSDIR}/devel/libosmo-netif \
		libdbi.so:${PORTSDIR}/databases/libdbi

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}/${PORTNAME}

USES=		autoreconf compiler:c11 gmake pkgconfig
USE_OPENSSL=	yes
GNU_CONFIGURE=	yes
AUTOMAKE_ARGS=	--gnu --add-missing --copy
CONFIGURE_ARGS+=	CFLAGS="-I${LOCALBASE}/include"

OPTIONS_DEFINE=	BSC NAT SQLITE
OPTIONS_DEFAULT= BSC NAT

BSC_DESC=	Enable OSMO BSC
NAT_DESC=	Enable NAT support
SQLITE_DESC=	Enable SQLite support

OPTIONS_SUB=	yes

BSC_CONFIGURE_ENABLE=	osmo-bsc

NAT_CONFIGURE_ENABLE=	nat
NAT_BUILD_DEPENDS=	${LOCALBASE}/lib/libsccp.a:${PORTSDIR}/devel/libosmo-sccp
NAT_RUN_DEPENDS=	${LOCALBASE}/lib/libsccp.a:${PORTSDIR}/devel/libosmo-sccp

SQLITE_LIB_DEPENDS=	libsqlite3.so:${PORTSDIR}/databases/sqlite3

post-patch:
	${REINPLACE_CMD} -e 's|pkgconfigdir.*|pkgconfigdir = ${PREFIX}/libdata/pkgconfig|g' \
		${WRKSRC}/Makefile.am
	${ECHO_CMD} ${PORTVERSION} > ${WRKSRC}/.tarball-version

.include <bsd.port.mk>
