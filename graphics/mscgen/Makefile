# $NetBSD: Makefile,v 1.8 2013/09/04 12:31:25 obache Exp $
#

DISTNAME=		mscgen-src-0.20
PKGNAME=		${DISTNAME:S/-src-/-/}
PKGREVISION=		6
CATEGORIES=		devel graphics
MASTER_SITES=		http://www.mcternan.me.uk/mscgen/software/

MAINTAINER=		jan.m.danielsson@gmail.com
HOMEPAGE=		http://www.mcternan.me.uk/mscgen/
COMMENT=		Tool for drawing call sequence graphs
LICENSE=		gnu-gpl-v2

PKG_INSTALLATION_TYPES=	overwrite pkgviews

GNU_CONFIGURE=		yes

USE_TOOLS+=		gmake pkg-config

WRKSRC=			${WRKDIR}/${PKGNAME_NOREV}

.include "../../graphics/gd/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
