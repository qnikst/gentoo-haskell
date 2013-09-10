# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="FFT using the Accelerate library"
HOMEPAGE="https://github.com/AccelerateHS/accelerate-fft"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+cuda"

RDEPEND=">=dev-haskell/accelerate-0.13:=[profile?] <dev-haskell/accelerate-0.14:=[profile?]
	>=dev-lang/ghc-6.10.4:=
	cuda? ( >=dev-haskell/accelerate-cuda-0.13:=[profile?] <dev-haskell/accelerate-cuda-0.14:=[profile?]
		>=dev-haskell/cuda-0.5:=[profile?] <dev-haskell/cuda-0.6:=[profile?]
		>=dev-haskell/cufft-0.1:=[profile?] <dev-haskell/cufft-0.2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag cuda cuda)
}