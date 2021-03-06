# $NetBSD: Makefile,v 1.14 2013/09/02 19:50:40 adam Exp $
#

DISTNAME=	gnome-desktop-3.6.2
PKGNAME=	${DISTNAME:S/desktop/desktop3/}
PKGREVISION=	5
CATEGORIES=	x11 gnome
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gnome-desktop/3.6/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	prlw1@cam.ac.uk
HOMEPAGE=	http://www.gnome.org/
COMMENT=	GNOME3 desktop-wide documents and libgnome-desktop library
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2 AND gnu-fdl-v1.1

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	gmake intltool msgfmt pkg-config
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	libgnome-desktop/gnome-desktop-3.0.pc.in

CONFIGURE_ARGS+=	--with-gnome-distributor="The NetBSD Foundation"
CONFIGURE_ARGS+=	--disable-date-in-gnome-version
CONFIGURE_ARGS+=	--disable-desktop-docs
CONFIGURE_ARGS+=	--disable-scrollkeeper
CONFIGURE_ARGS+=	--disable-gtk-doc

BUILD_DEPENDS+=		itstool-[0-9]*:../../textproc/itstool

BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.33.3
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
BUILDLINK_API_DEPENDS.gsettings-deskopt-schmemas+=	gsettings-deskopt-schmemas>=3.5.91
.include "../../sysutils/gsettings-desktop-schemas/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../x11/libXrandr/buildlink3.mk"
.include "../../x11/libxkbfile/buildlink3.mk"
.include "../../x11/startup-notification/buildlink3.mk"
.include "../../x11/xkeyboard-config/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
