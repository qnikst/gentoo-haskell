# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.3.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="Multi-file, colored, filtered log tailer."
HOMEPAGE="http://hackage.haskell.org/package/ztail"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+inotify"

RDEPEND=""
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6
		dev-haskell/regex-compat
		>=dev-lang/ghc-6.12.1
		inotify? ( >=dev-haskell/hinotify-0.3.6
		)"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag inotify inotify)
}
