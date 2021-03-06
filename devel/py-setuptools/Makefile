# $NetBSD: Makefile,v 1.33 2013/09/15 17:30:50 wiz Exp $

EGG_VERSION=		1.1.5
DISTNAME=		setuptools-${EGG_VERSION}
EGG_NAME=		setuptools-${EGG_VERSION}
PKGNAME=		${PYPKGPREFIX}-setuptools-${EGG_VERSION}
CATEGORIES=		devel python
MASTER_SITES=		http://pypi.python.org/packages/source/s/setuptools/

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://peak.telecommunity.com/DevCenter/setuptools
COMMENT=		New Python packaging system
LICENSE=		python-software-foundation OR zpl

PYDISTUTILSPKG=			yes
PYTHON_VERSIONS_INCLUDE_3X=	yes

PLIST_SUBST+=	PYVERSSUFFIX=${PYVERSSUFFIX} PYPKGPREFIX=${PYPKGPREFIX}
PLIST_SUBST+=	EGG_NAME=${EGGNAME}
PLIST_SUBST+=	EGG_INFODIR=${EGG_NAME}-py${PYVERSSUFFIX}.egg-info
PRINT_PLIST_AWK+=	{ gsub(/${EGG_NAME}-py${PYVERSSUFFIX}.egg-info/, \
			       "$${EGG_INFODIR}") }

REPLACE_PYTHON=		setuptools/command/easy_install.py
REPLACE_PYTHON+=	setuptools/tests/test_resources.py

.include "../../mk/bsd.fast.prefs.mk"

PYSETUPINSTALLARGS=	--single-version-externally-managed
.if ${_USE_DESTDIR} == "no"
PYSETUPINSTALLARGS+=	--root=/
.endif

.if ${OPSYS} == "Darwin"
DEPENDS+=	${PYPKGPREFIX}-expat-[0-9]*:../../textproc/py-expat
.endif

# upstream often forgets deleting files, and packages on Windows,
# so permissions are usually wrong
post-install:
	${RM} -f ${DESTDIR}${PREFIX}/${PYSITELIB}/${EGG_NAME}-py${PYVERSSUFFIX}.egg-info/*.orig
	${CHMOD} ${SHAREMODE} ${DESTDIR}${PREFIX}/${PYSITELIB}/${EGG_NAME}-py${PYVERSSUFFIX}.egg-info/*

.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
