# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2017 Escalade
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="at-spi2-core"
PKG_VERSION="2.38.0"
PKG_SHA256="84e36c3fe66862133f5fe229772b76aa2526e10de5014a3778f2fa46ce550da5"
PKG_LICENSE="OSS"
PKG_SITE="http://www.gnome.org/"
PKG_URL="https://ftp.gnome.org/pub/gnome/sources/at-spi2-core/${PKG_VERSION:0:4}/at-spi2-core-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain atk dbus glib libXtst"
PKG_LONGDESC="Protocol definitions and daemon for D-Bus at-spi."

PKG_MESON_OPTS_TARGET="-Denable_docs=false \
                       -Denable-introspection=no \
                       -Ddbus_daemon=/usr/bin/dbus-daemon"

pre_configure_target() {
  TARGET_LDFLAGS="$LDFLAGS -lXext"
}
