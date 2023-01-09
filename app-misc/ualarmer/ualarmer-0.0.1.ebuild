# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Minimalistic alarm clock for the command line."
HOMEPAGE="https://github.com/TheChymera/ualarmer/"
SRC_URI="https://github.com/TheChymera/ualarmer/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	app-misc/utimer
	media-video/mpv
	x11-themes/sound-theme-freedesktop
"

src_install() {
	newbin bin/ualarmer.sh ualarmer
	einstalldocs
}
