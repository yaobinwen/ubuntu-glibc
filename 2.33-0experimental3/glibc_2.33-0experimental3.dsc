-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: glibc
Binary: libc-bin, libc-dev-bin, libc-devtools, libc-l10n, glibc-doc, glibc-source, locales, locales-all, nscd, libc6, libc6-dev, libc6-dbg, libc6-udeb, libc6.1, libc6.1-dev, libc6.1-dbg, libc6.1-udeb, libc0.3, libc0.3-dev, libc0.3-dbg, libc0.3-udeb, libc0.1, libc0.1-dev, libc0.1-dbg, libc0.1-udeb, libc6-i386, libc6-dev-i386, libc6-sparc, libc6-dev-sparc, libc6-sparc64, libc6-dev-sparc64, libc6-s390, libc6-dev-s390, libc6-amd64, libc6-dev-amd64, libc6-powerpc, libc6-dev-powerpc, libc6-ppc64, libc6-dev-ppc64, libc6-mips32, libc6-dev-mips32, libc6-mipsn32, libc6-dev-mipsn32, libc6-mips64, libc6-dev-mips64, libc0.1-i386, libc0.1-dev-i386, libc6-x32, libc6-dev-x32, libc6.1-alphaev67
Architecture: any all
Version: 2.33-0experimental3
Maintainer: GNU Libc Maintainers <debian-glibc@lists.debian.org>
Uploaders: Clint Adams <clint@debian.org>, Aurelien Jarno <aurel32@debian.org>, Samuel Thibault <sthibault@debian.org>
Homepage: https://www.gnu.org/software/libc/libc.html
Standards-Version: 4.2.1
Vcs-Browser: https://salsa.debian.org/glibc-team/glibc
Vcs-Git: https://salsa.debian.org/glibc-team/glibc.git
Testsuite: autopkgtest
Testsuite-Triggers: @builddeps@, binutils, fakeroot, gcc-10, linux-libc-dev
Build-Depends: gettext, dpkg (>= 1.18.7), dpkg-dev (>= 1.17.14), xz-utils, file, quilt, autoconf, gawk, debhelper (>= 10), rdfind, symlinks, netbase, gperf, bison, linux-libc-dev (>= 3.9) [linux-any], libaudit-dev [linux-any], libcap-dev [linux-any], libselinux1-dev [linux-any] <!stage2>, mig-for-host (>= 1.5-3) [hurd-i386], gnumach-dev (>= 2:1.8+git20200710-2~) [hurd-i386], hurd-dev (>= 1:0.9.git20201127-4~) [hurd-i386] | hurd-headers-dev [hurd-i386], kfreebsd-kernel-headers [kfreebsd-any], binutils-for-host (>= 2.29), g++-10 <!cross>, g++-10-multilib [amd64 i386 kfreebsd-amd64 mips mipsel mipsn32 mipsn32el mips64 mips64el mipsr6 mipsr6el mipsn32r6 mipsn32r6el mips64r6 mips64r6el powerpc ppc64 s390x sparc sparc64 x32] <!nobiarch>, g++-10-x86-64-kfreebsd-gnu [kfreebsd-amd64] <cross>, g++-10-i686-kfreebsd-gnu [kfreebsd-i386] <cross>, g++-10-x86-64-linux-gnu [amd64] <cross>, g++-10-aarch64-linux-gnu [arm64] <cross>, g++-10-arm-linux-gnueabi [armel] <cross>, g++-10-arm-linux-gnueabihf [armhf] <cross>, g++-10-hppa-linux-gnu [hppa] <cross>, g++-10-i686-linux-gnu [i386] <cross>, g++-10-m68k-linux-gnu [m68k] <cross>, g++-10-mips-linux-gnu [mips] <cross>, g++-10-mipsel-linux-gnu [mipsel] <cross>, g++-10-mips64-linux-gnuabin32 [mipsn32] <cross>, g++-10-mips64el-linux-gnuabin32 [mipsn32el] <cross>, g++-10-mips64-linux-gnuabi64 [mips64] <cross>, g++-10-mips64el-linux-gnuabi64 [mips64el] <cross>, g++-10-mipsisa32r6-linux-gnu [mipsr6] <cross>, g++-10-mipsisa32r6el-linux-gnu [mipsr6el] <cross>, g++-10-mipsisa64r6-linux-gnuabin32 [mipsn32r6] <cross>, g++-10-mipsisa64r6el-linux-gnuabin32 [mipsn32r6el] <cross>, g++-10-mipsisa64r6-linux-gnuabi64 [mips64r6] <cross>, g++-10-mipsisa64r6el-linux-gnuabi64 [mips64r6el] <cross>, g++-10-nios2-linux-gnu [nios2] <cross>, g++-10-powerpc-linux-gnu [powerpc] <cross>, g++-10-powerpc64-linux-gnu [ppc64] <cross>, g++-10-powerpc64le-linux-gnu [ppc64el] <cross>, g++-10-riscv64-linux-gnu [riscv64] <cross>, g++-10-sparc-linux-gnu [sparc] <cross>, g++-10-sparc64-linux-gnu [sparc64] <cross>, g++-10-s390x-linux-gnu [s390x] <cross>, g++-10-sh3-linux-gnu [sh3] <cross>, g++-10-sh4-linux-gnu [sh4] <cross>, g++-10-x86-64-linux-gnux32 [x32] <cross>, g++-10-alpha-linux-gnu [alpha] <cross>, g++-10-ia64-linux-gnu [ia64] <cross>, python3:native, libidn2-0 (>= 2.0.5~) <!nocheck>, libc-bin (>= 2.33) <cross>, libgd-dev <!stage1> <!stage2>
Build-Depends-Indep: perl, po-debconf (>= 1.0)
Package-List:
 glibc-doc deb doc optional arch=all profile=!stage1
 glibc-source deb devel optional arch=all profile=!stage1
 libc-bin deb libs required arch=any profile=!stage1 essential=yes
 libc-dev-bin deb libdevel optional arch=any profile=!stage1
 libc-devtools deb devel optional arch=any profile=!stage1+!stage2
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
 libc6 deb libs optional arch=amd64,arm64,armel,armhf,hppa,i386,m68k,mips,mipsel,mipsn32,mipsn32el,mips64,mips64el,mipsr6,mipsr6el,mipsn32r6,mipsn32r6el,mips64r6,mips64r6el,nios2,powerpc,ppc64,ppc64el,riscv64,sparc,sparc64,s390x,sh3,sh4,x32 profile=!stage1
 libc6-amd64 deb libs optional arch=i386,x32 profile=!stage1,!nobiarch
 libc6-dbg deb debug optional arch=amd64,arm64,armel,armhf,hppa,i386,m68k,mips,mipsel,mipsn32,mipsn32el,mips64,mips64el,mipsr6,mipsr6el,mipsn32r6,mipsn32r6el,mips64r6,mips64r6el,nios2,powerpc,ppc64,ppc64el,riscv64,sparc,sparc64,s390x,sh3,sh4,x32 profile=!stage1
 libc6-dev deb libdevel optional arch=amd64,arm64,armel,armhf,hppa,i386,m68k,mips,mipsel,mipsn32,mipsn32el,mips64,mips64el,mipsr6,mipsr6el,mipsn32r6,mipsn32r6el,mips64r6,mips64r6el,nios2,powerpc,ppc64,ppc64el,riscv64,sparc,sparc64,s390x,sh3,sh4,x32
 libc6-dev-amd64 deb libdevel optional arch=i386,x32 profile=!nobiarch
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
 libc6.1 deb libs optional arch=alpha,ia64 profile=!stage1
 libc6.1-alphaev67 deb libs optional arch=alpha profile=!stage1
 libc6.1-dbg deb debug optional arch=alpha,ia64 profile=!stage1
 libc6.1-dev deb libdevel optional arch=alpha,ia64
 libc6.1-udeb udeb debian-installer optional arch=alpha,ia64 profile=!stage1
 locales deb localization standard arch=all profile=!stage1
 locales-all deb localization optional arch=any profile=!stage1
 nscd deb admin optional arch=any profile=!stage1
Checksums-Sha1:
 e402d406c98c2a7b324cc695c47cc783037ba3e3 17643172 glibc_2.33.orig.tar.xz
 ac178afbffa384221bf3d1c2d78f571c7792af84 809032 glibc_2.33-0experimental3.debian.tar.xz
Checksums-Sha256:
 5bd6d6b7fb0350308aa7abd067e081d57ba6ac1e0372ed372d197bccb86e5c14 17643172 glibc_2.33.orig.tar.xz
 9e7496c471ab10646986b4ff7bf874292a6b427aa6987a3091a8b481773fa4a2 809032 glibc_2.33-0experimental3.debian.tar.xz
Files:
 07d4bc22099ead15864939a91f0b64d4 17643172 glibc_2.33.orig.tar.xz
 a34831d7abd9ac80588ed274e55826b0 809032 glibc_2.33-0experimental3.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEUryGlb40+QrX1Ay4E4jA+JnoM2sFAmGtAqoACgkQE4jA+Jno
M2sVaRAAmmJS1cxBQx6leCBe2rAWt5LpC45TwgWf2jSd+nGiM3j5sGGQXlgk+Xgg
23pUiPwGP1aLnEmA86Sr1kARtZNuZwlu8GowxxnqlOWd8HDHTV12MY8e1TXLm6Hx
oQEI+wo8IJK8OqPddtkyEMe4qwKmcOsu9QlWAGl9tRNau19s5nb5HffuAXUyrdbR
jq2r78/SQvAgoiOhwo0jAsLJigLhRm6eOIyUfSyK3w2bl/YtUpN37j9EqW8w1YSv
AZeEF/Y/KJl8tw35TH6jMhpl3Csn/f0lFznUV5cXBdZykX46lRkd60Kd9FtxnrX1
3KN42r+9XeKw1mjqRJtTiDpZm7ZQr2hxAjM3ojiF6pgx2yx5CJwcj1C0D6L3n4VY
8grpi9YRy+V0VGOSnEw4Mh54ziSGO4TShpL7Fe3+CrW/nvN9iTb5wSnO2mviVQor
nvmVo1Yi84DaGuzM3ynzhJtRz9EdE2a6kvNVr6rzWsDC782SkoeTgYZ7W+FQVeLg
D0A9XmX0V/lszxE3rXDI0MLLcU4VjqS9PuZyK867qr4L+/Y4zRVjwBF2XrXMjgyU
6bXOt2SvDa6jVZK6MEEyA/aqJMDI4is7AfqSsEY8A2NgSp49UmL+koXx9m0nV7an
TT0n/bmLU5lizGh9eB7uF/shzjxj+fWIn8bEgpxGAFl2hV6NAtY=
=nuYJ
-----END PGP SIGNATURE-----
