# $FreeBSD$

PORTNAME=	plone.app.folder
PORTVERSION=	1.1.0
CATEGORIES=	www python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DIST_SUBDIR=	zope

MAINTAINER=	zope@FreeBSD.org
COMMENT=	Integration package for plone.folder into Plone

LICENSE=	GPLv2

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}Products.CMFCore>0:${PORTSDIR}/devel/py-Products.CMFCore \
		${PYTHON_PKGNAMEPREFIX}Products.GenericSetup>0:${PORTSDIR}/devel/py-Products.GenericSetup \
		${PYTHON_PKGNAMEPREFIX}plone.folder>0:${PORTSDIR}/www/py-plone.folder \
		${PYTHON_PKGNAMEPREFIX}plone.app.layout>0:${PORTSDIR}/www/py-plone.app.layout

NO_ARCH=	yes
USES=		python zip zope
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
