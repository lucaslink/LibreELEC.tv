################################################################################
#      This file is part of LibreELEC - https://LibreELEC.tv
#      Copyright (C) 2016 Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="SDL_gfx"
PKG_VERSION="2.0.25"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.ferzkopp.net/"
PKG_URL="http://www.ferzkopp.net/Software/SDL_gfx-2.0/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain SDL"
PKG_SECTION="emulators/depends"
PKG_SHORTDESC="libsdl_image: A cross-platform Graphic API"
PKG_LONGDESC="SDL_image is an image loading library that is used with the SDL library, and almost as portable. It allows a programmer to use multiple image formats without having to code all the loading and conversion algorithms themselves."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-shared --disable-mmx"

pre_configure_target() {
  export SDL_CONFIG=$SYSROOT_PREFIX/usr/bin/sdl-config
}
