# $NetBSD: Makefile,v 1.10 2013/06/16 18:56:05 sno Exp $
#

DISTNAME=	embryo-1.7.7
CATEGORIES=	lang
MASTER_SITES=	http://download.enlightenment.org/releases/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	http://enlightenment.org/
COMMENT=	Embeddable Scripting Language

# some potions of the code have a special license - but it's free, too
LICENSE=	2-clause-bsd

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

PKGCONFIG_OVERRIDE=	embryo.pc.in

.include "../../devel/eina/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
