#!/usr/bin/env bash
set -euo pipefail

# sudo add-apt-repository ppa:ubuntu-toolchain-r/ppa
# sudo apt update
# sudo apt install
#   autoconf
#   automake
#   g++-10
#   gcc-10
#   libgccjit-10-dev
#   libgccjit0
#   libgif-dev
#   libgpm-dev
#   libgtk2.0-dev
#   libjansson-dev
#   libjansson4
#   libjpeg-dev
#   libm17n-dev
#   libncurses5-dev
#   libotf-dev
#   libpng-dev
#   librsvg2-dev
#   libtiff-dev
#   libx11-dev
#   libxml2-dev
#   libxpm-dev
#   texinfo

### emacs 28.xx master
# git clone https://github.com/emacs/emacs.git emacs

SRC_DIR=emacs
BUILD_DIR=emacs28-build-3

export CC=/usr/bin/gcc-10 CXX=/usr/bin/gcc-10

# mkdir $BUILD_DIR
# cd $SRC_DIR && ./autogen.sh

cd $BUILD_DIR

#../emacs/configure\
#	--with-cairo\
#	--with-file-notification=inotify\
#	--with-gconf\
#	--with-gif\
#	--with-jpeg\
#	--with-json\
#	--with-lcms2\
#	--with-libsystemd\
#	--with-native-compilation\
#	--with-png\
#	--with-rsvg\
#	--with-tiff\
#	--with-xml2\
#	--with-dbus\
#	--with-libotf\
#	--with-modules\
#	--with-x-toolkit=gtk3\
#	--without-ns\
#	--without-compress-install\
#	--with-gnutls\
#	CFLAGS="-O3 -mtune=native -march=native -fomit-frame-pointer"
#

make -j3 NATIVE_FULL_AOT=1 


#### Reference

 ### Let configure use defaults for the following:
 # --with-cairo\                        #  Cairo drawing https://www.reddit.com/r/emacs/comments/jtbtro/whats_up_with_cairo/
 # --with-file-notification=inotify\    # use a file notification library (LIB one of: yes, inotify, kqueue, gfile, w32, no)
 # --with-gconf\                        # compile with Gconf support (Gsettings replaces this)
 # --with-gif\                          #  GIF image support
 # --with-imagemagick\                  #  ImageMagick image support
 # --with-jpeg\                         #  JPEG image support                                                  (29 results) [114/260]
 # --with-json\                         # native JSON support
 # --with-lcms2\                        #  Little CMS support
 # --with-libsystemd\                   #  libsystemd support
 # --with-native-compilation\           # compile with Emacs Lisp native compiler support
 # --with-png\                          #  PNG image support
 # --with-rsvg\                         #  SVG image support
 # --with-tiff\                         #  TIFF image support
 # --with-xml2\                         #  XML parsing support
 # --with-xwidgets\                     # enable use of xwidgets in Emacs buffers (requires gtk3 or macOS Cocoa)
 # --with-dbus\                         # don't compile with D-Bus support
 # --with-modules\                      # don't compile with dynamic modules support
 # --with-x-toolkit=gtk3\               # GTK3 support
 # --without-ns\                        # use Nextstep (macOS Cocoa or GNUstep) windowing system. On by default on macOS.
 # --without-compress-install\          # don't compress some files (.el, .info, etc.) when installing. Equivalent to: make GZIP_PROG= install
 # --without-gnutls\
 # --without-gpm                 \ # do# don't use -lgnutls for SSL/TLS support                                                              n't use -lgpm for mouse support on a GNU/Linux console
 # --without-gsettings           \ # don't compile with GSettings support
 # --without-harfbuzz            \ # HarfBuzz for text shaping
 # --without-libgmp              \ # do not use the GNU Multiple Precision (GMP) library; this is the default on systems lacking libgmp.
 # --without-libotf              \ # libotf for OpenType font support
 # --without-m17n-flt            \ # m17n-flt for text shaping
 # --without-native-image-api    \ # native image APIs (GDI+ on Windows)
 # --without-selinux             \ # don't compile with SELinux support
 # --without-threads             \ # don't compile with elisp threading support
 # --without-toolkit-scroll-bars \ # Xaw3d/GTK toolkit scroll bars
 # --without-xaw3d               \ # Xaw3d
 # --without-xdbe                \ # don't use X11 double buffering support
 # --without-xft                 \ # XFT for anti aliased fonts
 # --without-xim                 \ # at runtime, default X11 XIM to off
 # --without-zlib                \ # don't compile with zlib decompression support
 # --with-w32\

# https://devclass.com/2020/08/11/dont-look-vi-users-emacs-27-1-waves-bye-to-imagemagick-adds-native-json-parsing-support/


