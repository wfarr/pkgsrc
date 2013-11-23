# $NetBSD: buildlink3.mk,v 1.8 2012/05/07 01:53:56 dholland Exp $

BUILDLINK_TREE+=	gnupg2

.if !defined(GNUPG2_BUILDLINK3_MK)
GNUPG2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnupg2+=	gnupg2>=2.0.0
BUILDLINK_ABI_DEPENDS.gnupg2+=	gnupg2>=2.0.17nb1
BUILDLINK_PKGSRCDIR.gnupg2?=	../../security/gnupg2
BUILDLINK_PREFIX.gnupg2?=	${LOCALBASE}

.endif # GNUPG2_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnupg2
