# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Type-safe, multi-backend data serialization."
HOMEPAGE="http://www.yesodweb.com/book/persistent"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-haskell/aeson-0.5[profile?]
		<dev-haskell/aeson-0.7[profile?]
		dev-haskell/attoparsec[profile?]
		dev-haskell/base64-bytestring[profile?]
		=dev-haskell/blaze-html-0.4*[profile?]
		=dev-haskell/conduit-0.4*[profile?]
		=dev-haskell/lifted-base-0.1*[profile?]
		=dev-haskell/monad-control-0.3*[profile?]
		=dev-haskell/mtl-2.0*[profile?]
		=dev-haskell/path-pieces-0.1*[profile?]
		=dev-haskell/pool-conduit-0.1*[profile?]
		=dev-haskell/resourcet-0.3*[profile?]
		>=dev-haskell/text-0.8[profile?]
		<dev-haskell/text-1[profile?]
		>=dev-haskell/time-1.1.4[profile?]
		>=dev-haskell/transformers-0.2.1[profile?]
		<dev-haskell/transformers-0.4[profile?]
		dev-haskell/transformers-base[profile?]
		dev-haskell/unordered-containers[profile?]
		dev-haskell/vector[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/cabal-1.10
			dev-haskell/hunit[profile?]
			dev-haskell/hspec[profile?]
		)
		"

src_prepare() {
	# upstream forgot to include the tests
	cp -pR "${FILESDIR}/${PN}-0.9.0/test" "${S}/test" \
		|| die "Could not copy missing tests"
}

src_configure() {
	cabal_src_configure $(use test && use_enable test tests) #395351
}
