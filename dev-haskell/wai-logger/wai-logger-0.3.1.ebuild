# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A logging system for WAI"
HOMEPAGE="http://hackage.haskell.org/package/wai-logger"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/blaze-builder:=[profile?]
		dev-haskell/byteorder:=[profile?]
		dev-haskell/case-insensitive:=[profile?]
		>=dev-haskell/date-cache-0.3:=[profile?]
		>=dev-haskell/fast-logger-0.3:=[profile?]
		dev-haskell/http-types:=[profile?]
		dev-haskell/network:=[profile?]
		dev-haskell/wai:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"