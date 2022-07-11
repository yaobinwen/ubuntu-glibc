-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: glibc
Binary: libc-bin, libc-dev-bin, libc-devtools, libc-l10n, glibc-doc, glibc-source, locales, locales-all, nscd, libc6, libc6-dev, libc6-dbg, libc6-udeb, libc6.1, libc6.1-dev, libc6.1-dbg, libc6.1-udeb, libc0.3, libc0.3-dev, libc0.3-dbg, libc0.3-udeb, libc0.1, libc0.1-dev, libc0.1-dbg, libc0.1-udeb, libc6-i386, libc6-dev-i386, libc6-sparc, libc6-dev-sparc, libc6-sparc64, libc6-dev-sparc64, libc6-s390, libc6-dev-s390, libc6-amd64, libc6-dev-amd64, libc6-powerpc, libc6-dev-powerpc, libc6-ppc64, libc6-dev-ppc64, libc6-mips32, libc6-dev-mips32, libc6-mipsn32, libc6-dev-mipsn32, libc6-mips64, libc6-dev-mips64, libc0.1-i386, libc0.1-dev-i386, libc6-x32, libc6-dev-x32, libc6.1-alphaev67
Architecture: any all
Version: 2.34-0experimental5
Maintainer: GNU Libc Maintainers <debian-glibc@lists.debian.org>
Uploaders: Clint Adams <clint@debian.org>, Aurelien Jarno <aurel32@debian.org>, Samuel Thibault <sthibault@debian.org>
Homepage: https://www.gnu.org/software/libc/libc.html
Standards-Version: 4.2.1
Vcs-Browser: https://salsa.debian.org/glibc-team/glibc
Vcs-Git: https://salsa.debian.org/glibc-team/glibc.git
Testsuite: autopkgtest
Testsuite-Triggers: @builddeps@, binutils, fakeroot, gcc-11, linux-libc-dev
Build-Depends: gettext, dpkg (>= 1.18.7), dpkg-dev (>= 1.17.14), xz-utils, file, quilt, autoconf, gawk, debhelper (>= 10), rdfind, symlinks, netbase, gperf, bison, linux-libc-dev (>= 3.9) [linux-any], libaudit-dev [linux-any], libcap-dev [linux-any], libselinux1-dev [linux-any] <!stage2>, mig-for-host (>= 1.8+git20200618-7~) [hurd-i386], gnumach-dev (>= 2:1.8+git20200710-2~) [hurd-i386], hurd-dev (>= 1:0.9.git20201127-4~) [hurd-i386] | hurd-headers-dev [hurd-i386], kfreebsd-kernel-headers [kfreebsd-any], binutils-for-host (>= 2.29), g++-11 <!cross>, g++-11-multilib [amd64 i386 kfreebsd-amd64 mips mipsel mipsn32 mipsn32el mips64 mips64el mipsr6 mipsr6el mipsn32r6 mipsn32r6el mips64r6 mips64r6el powerpc ppc64 s390x sparc sparc64 x32] <!nobiarch>, g++-11-x86-64-kfreebsd-gnu [kfreebsd-amd64] <cross>, g++-11-i686-kfreebsd-gnu [kfreebsd-i386] <cross>, g++-11-x86-64-linux-gnu [amd64] <cross>, g++-11-aarch64-linux-gnu [arm64] <cross>, g++-11-arm-linux-gnueabi [armel] <cross>, g++-11-arm-linux-gnueabihf [armhf] <cross>, g++-11-hppa-linux-gnu [hppa] <cross>, g++-11-i686-linux-gnu [i386] <cross>, g++-11-m68k-linux-gnu [m68k] <cross>, g++-11-mips-linux-gnu [mips] <cross>, g++-11-mipsel-linux-gnu [mipsel] <cross>, g++-11-mips64-linux-gnuabin32 [mipsn32] <cross>, g++-11-mips64el-linux-gnuabin32 [mipsn32el] <cross>, g++-11-mips64-linux-gnuabi64 [mips64] <cross>, g++-11-mips64el-linux-gnuabi64 [mips64el] <cross>, g++-11-mipsisa32r6-linux-gnu [mipsr6] <cross>, g++-11-mipsisa32r6el-linux-gnu [mipsr6el] <cross>, g++-11-mipsisa64r6-linux-gnuabin32 [mipsn32r6] <cross>, g++-11-mipsisa64r6el-linux-gnuabin32 [mipsn32r6el] <cross>, g++-11-mipsisa64r6-linux-gnuabi64 [mips64r6] <cross>, g++-11-mipsisa64r6el-linux-gnuabi64 [mips64r6el] <cross>, g++-11-nios2-linux-gnu [nios2] <cross>, g++-11-powerpc-linux-gnu [powerpc] <cross>, g++-11-powerpc64-linux-gnu [ppc64] <cross>, g++-11-powerpc64le-linux-gnu [ppc64el] <cross>, g++-11-riscv64-linux-gnu [riscv64] <cross>, g++-11-sparc-linux-gnu [sparc] <cross>, g++-11-sparc64-linux-gnu [sparc64] <cross>, g++-11-s390x-linux-gnu [s390x] <cross>, g++-11-sh3-linux-gnu [sh3] <cross>, g++-11-sh4-linux-gnu [sh4] <cross>, g++-11-x86-64-linux-gnux32 [x32] <cross>, g++-11-alpha-linux-gnu [alpha] <cross>, g++-11-ia64-linux-gnu [ia64] <cross>, python3:native, libidn2-0 (>= 2.0.5~) <!nocheck>, libc-bin (>= 2.34) <cross>, libgd-dev <!stage1> <!stage2>
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
 8f4aa359658ac026ea79fae2ab8c125c8dc8f0ce 17949940 glibc_2.34.orig.tar.xz
 a2c9a69816460a654166f9970e8d61a9bc49f155 980564 glibc_2.34-0experimental5.debian.tar.xz
Checksums-Sha256:
 cc13047c7d42748108fc18cf1a4de8ca92f9e5c9bfcee09d6fada21d9a479878 17949940 glibc_2.34.orig.tar.xz
 dd2e42abdcbfcdf18aa15c579da3f3d5ef5f1b1182df6ca3d40be0018f42d67c 980564 glibc_2.34-0experimental5.debian.tar.xz
Files:
 f20a012405afa4e11ec636427f2fe1d6 17949940 glibc_2.34.orig.tar.xz
 548f3bca3f963ada32d0f9477f0c4144 980564 glibc_2.34-0experimental5.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEUryGlb40+QrX1Ay4E4jA+JnoM2sFAmLMYH4ACgkQE4jA+Jno
M2tFfxAAm9J7klmZ8EQCgg9l//S/3BieT7I1EcuwAa/96mFBgBJCt+9wZD8cO3RP
xINLqYryxDj75cyjqWBOsfv9OY0Xh/oVYvzAA7/SwRXoLzPZZPfxL/3Nbh8olTUw
DMDfJyPKzND6XZwcZ7FEed6dj6xxtuQDhZ8YIb31SvJWJglLOxzaGYMRNX+BM6GO
H5yHjZhgUDcgXL0rqqosGRWkvw6O4hBCsKrww837flp/lN6hPMZC/t3w41TznauX
NjgFtdedqRDKudZT7xLapz/pdDsWInXGdB9MeeVRQaEFIaL6w82TbR3PHDXuDXQB
u5Jwb6uW5OtrwYpmtJ6jjTCj6K/q568fCVh0nhjokRzwCp39ZPfDTYa3SgxhZJEP
YbnKUZl5KMvt4oMrx847jmXmK0uzSL3fnHetgtH72A5AknPM5dOmXevD5tX7MDyV
NkP9/m4IBh6DA+DZuLK5+SlkJ9iMUtx8+tCALsDjXkRP70Sh2BIidpE8nXeYbGBo
qSlGncmS25uovwBrVoE+1oquVMLNtaD+XokdngSYDf2iQ8+W03xLXMlObZtekX4y
sj5qL+pklZoYzDBRSp8oC2EQelDGwBbI5WCQDZGGNHa9dBd794R35PeGQpuivE+g
Eyr+UimuYpVC2BoVgQYbq/YI3keZVdOJep3szHTKS1zUHFVJkuY=
=/4Ph
-----END PGP SIGNATURE-----
