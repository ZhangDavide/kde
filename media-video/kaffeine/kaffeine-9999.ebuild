# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

KDE_HANDBOOK="optional"
inherit kde5

DESCRIPTION="Media player with digital TV support by KDE"
HOMEPAGE="https://kaffeine.kde.org/"

LICENSE="GPL-2+ handbook? ( FDL-1.3 )"
KEYWORDS=""
IUSE=""

CDEPEND="
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kconfigwidgets)
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep kdbusaddons)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep kio)
	$(add_frameworks_dep kwidgetsaddons)
	$(add_frameworks_dep kxmlgui)
	$(add_frameworks_dep solid)
	$(add_qt_dep qtdbus)
	$(add_qt_dep qtgui)
	$(add_qt_dep qtnetwork)
	$(add_qt_dep qtsql 'sqlite')
	$(add_qt_dep qtwidgets)
	$(add_qt_dep qtx11extras)
	$(add_qt_dep qtxml)
	media-libs/libv4l
	media-video/vlc[X]
	x11-libs/libXScrnSaver
"
DEPEND="${CDEPEND}
	sys-devel/gettext
	virtual/pkgconfig
"
RDEPEND="${CDEPEND}
	!media-video/kaffeine:4
"

DOCS=( Changelog NOTES README.md )

src_configure() {
	# tools working on $HOME directory for a local git checkout
	local mycmakeargs=(
		-DBUILD_TOOLS=OFF
	)

	kde5_src_configure
}
