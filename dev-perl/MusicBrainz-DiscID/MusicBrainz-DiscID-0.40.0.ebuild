# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DIST_AUTHOR=NJH
DIST_VERSION=0.04
DIST_EXAMPLES=("examples/*")
inherit perl-module

DESCRIPTION="Perl interface for the MusicBrainz libdiscid library"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ppc ppc64 x86"
IUSE="test"

RDEPEND=">=media-libs/libdiscid-0.2.2"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	virtual/pkgconfig
	test? (
		>=virtual/perl-Test-1.0.0
		virtual/perl-Test-Simple
	)
"

src_test() {
	perl_rm_files t/05pod.t
	perl-module_src_test
}
