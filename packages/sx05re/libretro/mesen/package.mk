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

PKG_NAME="mesen"
PKG_VERSION="a6aab8f995608426b08a1404b480569731e0e678"
PKG_SHA256="e86adc36adf25f8d1c81649292049181bce1411083f959cb795dd5591f256048"
PKG_REV="1"
PKG_ARCH="i386 x86_64 arm"
PKG_LICENSE="GPLv3"
PKG_SITE="https://github.com/SourMesen/Mesen"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="libretro"
PKG_SHORTDESC="Mesen is a cross-platform (Windows & Linux) NES/Famicom emulator built in C++ and C#"
PKG_LONGDESC="Mesen is a cross-platform (Windows & Linux) NES/Famicom emulator built in C++ and C#"

PKG_IS_ADDON="no"
PKG_TOOLCHAIN="make"
PKG_AUTORECONF="no"

make_target() {
  make -C Libretro/
}


makeinstall_target() {
  mkdir -p $INSTALL/usr/lib/libretro
  cp Libretro/mesen_libretro.so $INSTALL/usr/lib/libretro/
}

