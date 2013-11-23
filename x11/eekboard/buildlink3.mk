# $NetBSD: buildlink3.mk,v 1.21 2013/09/02 19:50:43 adam Exp $
#

BUILDLINK_TREE+=	eekboard

.if !defined(EEKBOARD_BUILDLINK3_MK)
EEKBOARD_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.eekboard+=	eekboard>=1.0.5
BUILDLINK_ABI_DEPENDS.eekboard?=	eekboard>=1.0.5nb11
BUILDLINK_PKGSRCDIR.eekboard?=	../../x11/eekboard

.include "../../mk/bsd.fast.prefs.mk"

pkgbase := eekboard
.include "../../mk/pkg-build-options.mk"

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.if !empty(PKG_BUILD_OPTIONS.eekboard:Mclutter)
.include "../../graphics/clutter/buildlink3.mk"
.include "../../graphics/clutter-gtk/buildlink3.mk"
.endif
.include "../../textproc/libcroco/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libxklavier/buildlink3.mk"
.endif	# EEKBOARD_BUILDLINK3_MK

BUILDLINK_TREE+=	-eekboard
