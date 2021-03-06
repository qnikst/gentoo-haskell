# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Conduit interface for fluent-logger"
HOMEPAGE="http://hackage.haskell.org/package/fluent-logger-conduit"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/conduit-1.0*:=[profile?]
		=dev-haskell/fluent-logger-0.1*:=[profile?]
		>=dev-haskell/msgpack-0.7.1:=[profile?]
		<dev-haskell/msgpack-0.8:=[profile?]
		>=dev-haskell/transformers-0.2:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"
