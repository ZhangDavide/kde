# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

KDE_HANDBOOK="forceoptional"
KMNAME="${PN}5"
inherit kde5

DESCRIPTION="Screen gamma values kcontrol module"
KEYWORDS=""
IUSE=""

RDEPEND="
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kconfigwidgets)
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep kdelibs4support)
	$(add_frameworks_dep ki18n)
	$(add_qt_dep qtgui)
	$(add_qt_dep qtwidgets)
	x11-libs/libX11
	x11-libs/libXxf86vm
"
DEPEND="${RDEPEND}
	x11-proto/xf86vidmodeproto
"
