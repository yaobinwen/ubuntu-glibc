-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: glibc
Binary: libc-bin, libc-dev-bin, libc-l10n, glibc-doc, glibc-source, locales, locales-all, nscd, libc6, libc6-dev, libc6-dbg, libc6-udeb, libc6.1, libc6.1-dev, libc6.1-dbg, libc6.1-udeb, libc0.3, libc0.3-dev, libc0.3-dbg, libc0.3-udeb, libc0.1, libc0.1-dev, libc0.1-dbg, libc0.1-udeb, libc6-i386, libc6-dev-i386, libc6-sparc, libc6-dev-sparc, libc6-sparc64, libc6-dev-sparc64, libc6-s390, libc6-dev-s390, libc6-amd64, libc6-dev-amd64, libc6-powerpc, libc6-dev-powerpc, libc6-ppc64, libc6-dev-ppc64, libc6-mips32, libc6-dev-mips32, libc6-mipsn32, libc6-dev-mipsn32, libc6-mips64, libc6-dev-mips64, libc6-armhf, libc6-dev-armhf, libc6-armel, libc6-dev-armel, libc0.1-i386, libc0.1-dev-i386, libc6-x32, libc6-dev-x32, libc6-xen, libc0.3-xen, libc6.1-alphaev67, libc6-lse
Architecture: any all
Version: 2.32-0ubuntu3
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Uploaders: Clint Adams <clint@debian.org>, Aurelien Jarno <aurel32@debian.org>, Adam Conrad <adconrad@0c3.net>, Samuel Thibault <sthibault@debian.org>
Homepage: https://www.gnu.org/software/libc/libc.html
Standards-Version: 4.2.1
Vcs-Browser: https://git.launchpad.net/~ubuntu-core-dev/ubuntu/+source/glibc
Vcs-Git: https://git.launchpad.net/~ubuntu-core-dev/ubuntu/+source/glibc
Testsuite: autopkgtest
Testsuite-Triggers: @builddeps@, binutils, fakeroot, gcc-10, linux-libc-dev
Build-Depends: gettext, dpkg (>= 1.18.7), dpkg-dev (>= 1.17.14), xz-utils, file, quilt, autoconf, gawk, debhelper (>= 10), rdfind, symlinks, netbase, gperf, bison, linux-libc-dev (>= 3.9) [linux-any], systemtap-sdt-dev [linux-any], libaudit-dev [linux-any], libcap-dev [linux-any], libselinux-dev [linux-any] <!stage2>, mig-for-host (>= 1.5-3) [hurd-i386], gnumach-dev (>= 2:1.8+git20200710-2~) [hurd-i386], hurd-dev (>= 1:0.9.git20191029) [hurd-i386] | hurd-headers-dev [hurd-i386], kfreebsd-kernel-headers [kfreebsd-any], binutils (>= 2.29), g++-10, g++-10-multilib [amd64 armel armhf i386 kfreebsd-amd64 mips mipsel mipsn32 mipsn32el mips64 mips64el mipsr6 mipsr6el mipsn32r6 mipsn32r6el mips64r6 mips64r6el powerpc ppc64 s390x sparc sparc64 x32] <!nobiarch>, gcc-10 (>= 10-20200431) [arm64], gcc-10 (>= 10.1.0-3) [hurd-i386], python3:native, libidn2-0 (>= 2.0.5~) <!nocheck>, libc-bin (>= 2.32) <cross>
Build-Depends-Indep: perl, po-debconf (>= 1.0)
Package-List:
 glibc-doc deb doc optional arch=all profile=!stage1
 glibc-source deb devel optional arch=all profile=!stage1
 libc-bin deb libs required arch=any profile=!stage1 essential=yes
 libc-dev-bin deb libdevel optional arch=any profile=!stage1
 libc-l10n deb localization standard arch=all profile=!stage1
 libc0.1 deb libs optional arch=kfreebsd-amd64,kfreebsd-i386 profile=!stage1
 libc0.1-dbg deb debug optional arch=kfreebsd-amd64,kfreebsd-i386 profile=!stage1
 libc0.1-dev deb libdevel optional arch=kfreebsd-amd64,kfreebsd-i386
 libc0.1-dev-i386 deb libdevel optional arch=kfreebsd-amd64 profile=!nobiarch
 libc0.1-i386 deb libs optional arch=kfreebsd-amd64 profile=!stage1,!nobiarch
 libc0.1-udeb udeb debian-installer optional arch=kfreebsd-amd64,kfreebsd-i386 profile=!stage1
 libc0.3 deb libs optional arch=hurd-i386 profile=!stage1
 libc0.3-dbg deb debug optional arch=hurd-i386 profile=!stage1
 libc0.3-dev deb libdevel optional arch=hurd-i386
 libc0.3-udeb udeb debian-installer optional arch=hurd-i386 profile=!stage1
 libc0.3-xen deb libs optional arch=hurd-i386 profile=!stage1
 libc6 deb libs optional arch=amd64,arm64,armel,armhf,hppa,i386,m68k,mips,mipsel,mipsn32,mipsn32el,mips64,mips64el,mipsr6,mipsr6el,mipsn32r6,mipsn32r6el,mips64r6,mips64r6el,nios2,powerpc,ppc64,ppc64el,riscv64,sparc,sparc64,s390x,sh3,sh4,x32 profile=!stage1
 libc6-amd64 deb libs optional arch=i386,x32 profile=!stage1,!nobiarch
 libc6-armel deb libs optional arch=armhf profile=!stage1,!nobiarch
 libc6-armhf deb libs optional arch=armel profile=!stage1,!nobiarch
 libc6-dbg deb debug optional arch=amd64,arm64,armel,armhf,hppa,i386,m68k,mips,mipsel,mipsn32,mipsn32el,mips64,mips64el,mipsr6,mipsr6el,mipsn32r6,mipsn32r6el,mips64r6,mips64r6el,nios2,powerpc,ppc64,ppc64el,riscv64,sparc,sparc64,s390x,sh3,sh4,x32 profile=!stage1
 libc6-dev deb libdevel optional arch=amd64,arm64,armel,armhf,hppa,i386,m68k,mips,mipsel,mipsn32,mipsn32el,mips64,mips64el,mipsr6,mipsr6el,mipsn32r6,mipsn32r6el,mips64r6,mips64r6el,nios2,powerpc,ppc64,ppc64el,riscv64,sparc,sparc64,s390x,sh3,sh4,x32
 libc6-dev-amd64 deb libdevel optional arch=i386,x32 profile=!nobiarch
 libc6-dev-armel deb libdevel optional arch=armhf profile=!nobiarch
 libc6-dev-armhf deb libdevel optional arch=armel profile=!nobiarch
 libc6-dev-i386 deb libdevel optional arch=amd64,x32 profile=!nobiarch
 libc6-dev-mips32 deb libdevel optional arch=mipsn32,mipsn32el,mips64,mips64el,mipsn32r6,mipsn32r6el,mips64r6,mips64r6el profile=!nobiarch
 libc6-dev-mips64 deb libdevel optional arch=mips,mipsel,mipsn32,mipsn32el,mipsr6,mipsr6el,mipsn32r6,mipsn32r6el profile=!nobiarch
 libc6-dev-mipsn32 deb libdevel optional arch=mips,mipsel,mips64,mips64el,mipsr6,mipsr6el,mips64r6,mips64r6el profile=!nobiarch
 libc6-dev-powerpc deb libdevel optional arch=ppc64 profile=!nobiarch
 libc6-dev-ppc64 deb libdevel optional arch=powerpc profile=!nobiarch
 libc6-dev-s390 deb libdevel optional arch=s390x profile=!nobiarch
 libc6-dev-sparc deb libdevel optional arch=sparc64 profile=!nobiarch
 libc6-dev-sparc64 deb libdevel optional arch=sparc profile=!nobiarch
 libc6-dev-x32 deb libdevel optional arch=amd64,i386 profile=!nobiarch
 libc6-i386 deb libs optional arch=amd64,x32 profile=!stage1,!nobiarch
 libc6-lse deb libs optional arch=arm64 profile=!stage1
 libc6-mips32 deb libs optional arch=mipsn32,mipsn32el,mips64,mips64el,mipsn32r6,mipsn32r6el,mips64r6,mips64r6el profile=!stage1,!nobiarch
 libc6-mips64 deb libs optional arch=mips,mipsel,mipsn32,mipsn32el,mipsr6,mipsr6el,mipsn32r6,mipsn32r6el profile=!stage1,!nobiarch
 libc6-mipsn32 deb libs optional arch=mips,mipsel,mips64,mips64el,mipsr6,mipsr6el,mips64r6,mips64r6el profile=!stage1,!nobiarch
 libc6-powerpc deb libs optional arch=ppc64 profile=!stage1,!nobiarch
 libc6-ppc64 deb libs optional arch=powerpc profile=!stage1,!nobiarch
 libc6-s390 deb libs optional arch=s390x profile=!stage1,!nobiarch
 libc6-sparc deb libs optional arch=sparc64 profile=!stage1,!nobiarch
 libc6-sparc64 deb libs optional arch=sparc profile=!stage1,!nobiarch
 libc6-udeb udeb debian-installer optional arch=amd64,arm64,armel,armhf,hppa,i386,m68k,mips,mipsel,mipsn32,mipsn32el,mips64,mips64el,mipsr6,mipsr6el,mipsn32r6,mipsn32r6el,mips64r6,mips64r6el,nios2,powerpc,ppc64,ppc64el,riscv64,sparc,sparc64,s390x,sh3,sh4,x32 profile=!stage1
 libc6-x32 deb libs optional arch=amd64,i386 profile=!stage1,!nobiarch
 libc6-xen deb libs optional arch=i386 profile=!stage1
 libc6.1 deb libs optional arch=alpha,ia64 profile=!stage1
 libc6.1-alphaev67 deb libs optional arch=alpha profile=!stage1
 libc6.1-dbg deb debug optional arch=alpha,ia64 profile=!stage1
 libc6.1-dev deb libdevel optional arch=alpha,ia64
 libc6.1-udeb udeb debian-installer optional arch=alpha,ia64 profile=!stage1
 locales deb localization standard arch=all profile=!stage1
 locales-all deb localization optional arch=any profile=!stage1
 nscd deb admin optional arch=any profile=!stage1
Checksums-Sha1:
 71ff0af28bdf4525d7b91ec5d82d1fc002000e91 16744512 glibc_2.32.orig.tar.xz
 9503e323293663fc56e0565bfea6c3459b0836ab 859372 glibc_2.32-0ubuntu3.debian.tar.xz
Checksums-Sha256:
 1627ea54f5a1a8467032563393e0901077626dc66f37f10ee6363bb722222836 16744512 glibc_2.32.orig.tar.xz
 234de3484b2f4acfac1dd1266a126ad0c72284a415aa936cf5c6ce721c049113 859372 glibc_2.32-0ubuntu3.debian.tar.xz
Files:
 720c7992861c57cf97d66a2f36d8d1fa 16744512 glibc_2.32.orig.tar.xz
 2042e4153d847b83951e94128b5a04d2 859372 glibc_2.32-0ubuntu3.debian.tar.xz
Original-Maintainer: GNU Libc Maintainers <debian-glibc@lists.debian.org>
Original-Vcs-Browser: https://salsa.debian.org/glibc-team/glibc
Original-Vcs-Git: https://salsa.debian.org/glibc-team/glibc.git

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI/PvTgXX55rLQUfDg6KBkWslS0UFAl9g/cgACgkQg6KBkWsl
S0UHnxAAv0FrMj1eSZvuqGHdyTrdUbAVgPr45SimHoeKeWQjK45bFgUelrTGpqV3
s1jV9w5AHj9+DK1QxKdZCut2+XwJPpGkDCLSVElnygD5LEkaWLmiTgc6YP6MOJoF
mwJ+gPJQTpvRs1cBsm9OyYo8POo7NLow/Q6b4BqYg+FtVk7eBaOBZozQW0v11myH
bAbCZro6FiKBYfZoHp8dupVQQllF/lMSoqwPWKxfSVhLDvivGBzYb4X80CAU6cJw
TUQjV0PxtGHdsIYsNrqTTDEEqdG5zU/4Jm6WyFYsiL+qAZID2zlFnYPyQmue3sfP
uRKA1B4hO4uwIXaQLzqdlSH5+iiJ5h5OzwmiVhxJFYbzFbqVCN5bNNekf9Kjwm1W
pt8Md7BqIl3gBcW1faceOiaJzptfYLVCl04ww3sB+6A2X/xZlxo2S+rMck5Wxg+y
+G7ZD+45VRhCO70MXR41JuHvgPCNwwrCLTRe4i2tmDcwn94A9jPM71+FA7japXFa
y0nfPkZYr8nvrAfYTm1zJ8HyZ8Ud8hYVo8Zum7jhFU+8cJFr2pQgiyxfiXU8QaCV
mK/IX7tnGKlyI3D+9svi7ie6t38x5EB72sY02APQjmZ0IagRA/0Vj3tx86HPbYK4
m4apyGxMMKLBXO/0oZepgcs3RT6y/fccikCF91vasTFxnGTESBM=
=ofdE
-----END PGP SIGNATURE-----
