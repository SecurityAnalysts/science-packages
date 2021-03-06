TERMUX_PKG_HOMEPAGE=http://geos.osgeo.org/
TERMUX_PKG_DESCRIPTION="Geometry Engine, C++ port of the Java Topology Suite"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="Henrik Grimler @Grimler91"
TERMUX_PKG_VERSION=3.7.1
TERMUX_PKG_SHA256=43fed7258eca2a73e976edde7495fc2a5fc7a4b38fd84eab6810175cb6a16282
TERMUX_PKG_SRCURL=https://github.com/libgeos/geos/archive/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DGEOS_BUILD_STATIC=off"

