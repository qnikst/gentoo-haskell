# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.5.9999

GTK_MAJ_VER="3"

MY_PN=gtksourceview${GTK_MAJ_VER}
MY_P="${MY_PN}-${PV}"

#nocabaldep is for the fancy cabal-detection feature at build-time
CABAL_FEATURES="lib profile haddock hoogle hscolour nocabaldep"
inherit haskell-cabal

DESCRIPTION="Binding to the GtkSourceView library."
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

S="${WORKDIR}/${MY_P}"

LICENSE="LGPL-2.1"
SLOT="${GTK_MAJ_VER}/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/glib-0.12:${GTK_MAJ_VER}=[profile?] <dev-haskell/glib-0.13:${GTK_MAJ_VER}=[profile?]
	>=dev-haskell/gtk-0.12.5.0:${GTK_MAJ_VER}=[profile?] <dev-haskell/gtk-0.13:${GTK_MAJ_VER}=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-lang/ghc-6.10.4:=
	x11-libs/gtksourceview:3.0
"
DEPEND="${RDEPEND}
	dev-haskell/gtk2hs-buildtools:${GTK_MAJ_VER}=
	virtual/pkgconfig
"

src_prepare() {
	sed -e "s@gtk2hsTypeGen@gtk2hsTypeGen${GTK_MAJ_VER}@" \
		-e "s@gtk2hsHookGenerator@gtk2hsHookGenerator${GTK_MAJ_VER}@" \
		-e "s@gtk2hsC2hs@gtk2hsC2hs${GTK_MAJ_VER}@" \
		-i "${S}/Gtk2HsSetup.hs" \
		-i "${S}/SetupMain.hs" \
		|| die "Could not change SetupMain.hs for GTK+ slot ${GTK_MAJ_VER}"
	sed -e "s@gtk2hsC2hs@gtk2hsC2hs${GTK_MAJ_VER}@" \
		-e "s@gtk2hsTypeGen@gtk2hsTypeGen${GTK_MAJ_VER}@" \
		-e "s@gtk2hsHookGenerator@gtk2hsHookGenerator${GTK_MAJ_VER}@" \
		-i "${S}/${MY_PN}.cabal" \
		|| die "Could not change ${MY_PN}.cabal for GTK+ slot ${GTK_MAJ_VER}"
	CABAL_FILE=${S}/${MY_PN}.cabal cabal_chdeps \
		'glib  >= 0.12 && < 0.13' 'glib  >= 0.12.5.0'
}
