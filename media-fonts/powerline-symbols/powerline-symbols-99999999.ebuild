# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit font

DESCRIPTION="OpenType Unicode font with symbols for Powerline/Airline"
HOMEPAGE="https://github.com/powerline/powerline"
SRC_URI="https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
         https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf"
# We're redistributing just the (unversioned) font from the upstream repo here

LICENSE="MIT-with-advertising"
SLOT="0"
KEYWORDS="amd64 ~arm x86"
IUSE=""

FONT_S="${S}"
FONT_SUFFIX="otf"
FONT_CONF=( 10-powerline-symbols.conf )

src_unpack() {
	mkdir -p ${S}
	cp ${DISTDIR}/* ${S}/
}
