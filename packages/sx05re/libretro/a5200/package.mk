################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="a5200"
PKG_VERSION="7eee43299d0abe28828dee2b86f100b066391866"
PKG_SHA256="7cb11c04b1b67c07d47b0ffa4eed13de50efe4a72f971ae87c3cd5593a68a4b2"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/libretro/a5200"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Port of Atari 5200 emulator for GCW0 "
PKG_TOOLCHAIN="auto"

PKG_MAKE_OPTS_TARGET="platform=rpi4"

makeinstall_target() {
  mkdir -p $INSTALL/usr/lib/libretro
  cp a5200_libretro.so $INSTALL/usr/lib/libretro/
}
