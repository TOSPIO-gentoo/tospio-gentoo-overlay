# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit font

DESCRIPTION="Awesome symbols in terminal composed of several fonts"
HOMEPAGE="https://github.com/gabrielelana/awesome-terminal-fonts"
SRC_URI="https://github.com/gabrielelana/awesome-terminal-fonts/archive/v1.1.0.zip"
# We're redistributing just the (unversioned) font from the upstream repo here

LICENSE="MIT-with-advertising"
SLOT="0"
KEYWORDS="amd64 ~arm x86"
IUSE=""

FONT_S="${S}"
FONT_SUFFIX="ttf"
FONT_CONF=( 10-awesome-terminal-fonts.conf )

src_prepare() {
	cd ${S}
	find * -maxdepth 0 ! -name 'build' -exec rm -rf {} +
	mv ${S}/build/*.ttf ${S}/
	rm -rf ${S}/build
	cp ${FILESDIR}/10-awesome-terminal-fonts.conf ${S}/
}
