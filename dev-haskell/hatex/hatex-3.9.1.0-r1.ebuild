# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="HaTeX"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="The Haskell LaTeX library."
HOMEPAGE="http://daniel-diaz.github.io/projects/hatex"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10.2:=[profile?]
	dev-haskell/matrix:=[profile?]
	>=dev-haskell/text-0.11.2.3:=[profile?] <dev-haskell/text-2:=[profile?]
	>=dev-haskell/transformers-0.2.2:=[profile?] <dev-haskell/transformers-0.4:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	CABAL_FILE=${MY_PN}.cabal cabal_chdeps \
		'attoparsec >= 0.10.2 && < 0.11' 'attoparsec >= 0.10.2'
}
