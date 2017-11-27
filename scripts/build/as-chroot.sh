#!/bin/bash
set -e
echo "Continue with chroot environment.."

# remove the "I have no name!" prompt and continue with building basic tools
exec /tools/bin/bash --login +h            \
     ./tools/6.5-create-directories.sh     \
  && ./tools/6.6-create-essentials.sh      \
  && ./tools/6.7-make-linux-api-headers.sh \
  && ./tools/6.8-make-man-pages.sh         \
  && ./tools/6.9-make-make-glibc.sh        \
  && ./tools/6.10-adjust-toolchain.sh      \
  && ./tools/6.11-make-zlib.sh             \
  && ./tools/6.12-make-file.sh             \
  && ./tools/6.13-make-readline.sh         \
  && ./tools/6.14-make-m4.sh               \
  && ./tools/6.15-make-bc.sh               \
  && ./tools/6.16-make-binutils.sh         \
  && ./tools/6.17-make-gmp.sh              \
  && ./tools/6.18-make-mpfr.sh             \
  && ./tools/6.19-make-mpc.sh              \
  && ./tools/6.20-make-gcc.sh              \
  && ./tools/6.21-make-bzip2.sh            \
  && ./tools/6.22-make-pkg-config.sh       \
  && ./tools/6.23-make-ncurses.sh          \
  && ./tools/6.24-make-attr.sh             \
  && ./tools/6.25-make-acl.sh              \
  && ./tools/6.26-make-libcap.sh           \
  && ./tools/6.27-make-sed.sh              \
  && ./tools/6.28-make-shadow.sh           \
  && ./tools/6.29-make-psmisc.sh           \
  && ./tools/6.30-make-iana-etc.sh         \
  && ./tools/6.31-make-bison.sh            \
  && ./tools/6.32-make-flex.sh             \
  && ./tools/6.33-make-grep.sh             \
  && ./tools/6.34-make-bash.sh             \
  && exec /bin/bash --login +h             \
     ./tools/6.35-make-libtool.sh          \
  && ./tools/6.36-make-gdbm.sh
