# $NetBSD: Makefile,v 1.83 2013/09/02 19:51:06 adam Exp $
#

.include "Makefile.common"

PKGREVISION=	16

.include "options.mk"

# just to convert the manpage
BUILD_DEPENDS+=	docbook-xsl-[0-9]*:../../textproc/docbook-xsl

.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
