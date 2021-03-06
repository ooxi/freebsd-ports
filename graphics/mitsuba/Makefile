# Created by: Alexey Dokuchaev <danfe@FreeBSD.org>
# $FreeBSD$

PORTNAME=	mitsuba
PORTVERSION=	0.5.0
CATEGORIES=	graphics
MASTER_SITES=	https://www.mitsuba-renderer.org/repos/mitsuba/archive/${HG_REVISION}${EXTRACT_SUFX}?dummy=
DISTNAME=	${PORTNAME}-${HG_REVISION}

MAINTAINER=	danfe@FreeBSD.org
COMMENT=	Research-oriented physically based rendering system

LICENSE=	GPLv3

BUILD_DEPENDS=	${LOCALBASE}/libdata/pkgconfig/eigen3.pc:${PORTSDIR}/math/eigen3
LIB_DEPENDS=	libboost_system.so:${PORTSDIR}/devel/boost-libs \
		libpng.so:${PORTSDIR}/graphics/png \
		libIlmImf.so:${PORTSDIR}/graphics/OpenEXR \
		libxerces-c.so:${PORTSDIR}/textproc/xerces-c3 \
		libfftw3.so:${PORTSDIR}/math/fftw3

ONLY_FOR_ARCHS=	i386 amd64
ONLY_FOR_ARCHS_REASON=	uses SSE instructions

USES=		cmake jpeg tar:bzip2
USE_GL=		glew
USE_QT4=	moc_build qmake_build rcc_build uic_build \
		gui opengl network xml xmlpatterns

CMAKE_ARGS=	-DMTS_SIMPLE_PATHS:BOOL=OFF -DBUILD_PYTHON:BOOL=OFF \
		-DMTS_USE_PCH:BOOL=OFF

# Parallel build does not work as expected: it remains single-thread while
# deferring build process to the background and also inhibiting highlights
# from Clang output; these bugs should be fixed before enabling -jX builds.
MAKE_JOBS_UNSAFE=	yes

HG_REVISION=	11ee1d7236f3
FETCH_ARGS=	-o ${DISTNAME}${EXTRACT_SUFX}

.include <bsd.port.pre.mk>

# Unfortunately, the code is not GCC 4.2.1 compatible (due to bugs in GCC
# itself).  Use system compiler if it is Clang.
.if ${OSVERSION} < 1000024
CC=		clang
CXX=		clang++
CPP=		clang-cpp
.endif

post-patch:
	@${REINPLACE_CMD} -e '/CMAKE_SYSTEM_NAME/s,Linux,${OPSYS},' \
		${WRKSRC}/data/cmake/MitsubaExternal.cmake \
		${WRKSRC}/data/cmake/PCHTargets.cmake \
		${WRKSRC}/src/libcore/CMakeLists.txt \
		${WRKSRC}/src/libhw/CMakeLists.txt

post-install:
# XXX: palliative; better fix installation routine not to pollute ${STAGEDIR}
	@${RMDIR} ${STAGEDIR}${PREFIX}/share/mitsuba/data/ior/CMakeFiles/ior_database.dir
	@${RMDIR} ${STAGEDIR}${PREFIX}/share/mitsuba/data/ior/CMakeFiles

.include <bsd.port.post.mk>
