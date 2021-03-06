TERMUX_PKG_HOMEPAGE=https://www.gnu.org/software/gnucap/gnucap.html
TERMUX_PKG_DESCRIPTION="The Gnu Circuit Analysis Package"
TERMUX_PKG_MAINTAINER="Henrik Grimler @Grimler91"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_VERSION=20171003
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=https://gitlab.com/gnucap/gnucap/-/archive/${TERMUX_PKG_VERSION}/gnucap-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=2facf5e945cf253727bef9b8e2602767599ea77a6c0d8c5d91101764544fa09a
TERMUX_PKG_DEPENDS="readline"
TERMUX_PKG_BUILD_IN_SRC=yes
TERMUX_PKG_HOSTBUILD=yes
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--prefix=$TERMUX_PREFIX"

termux_step_host_build () {
	cp -r $TERMUX_PKG_SRCDIR/* .
	./configure
	(cd lib && make)
	(cd modelgen && make)
}

termux_step_pre_configure () {
	sed -i "s%@TERMUX_PKG_HOSTBUILD_DIR@%$TERMUX_PKG_HOSTBUILD_DIR%g" $TERMUX_PKG_SRCDIR/apps/Make1
}

termux_step_configure () {
	$TERMUX_PKG_SRCDIR/configure --prefix=$TERMUX_PREFIX
}
