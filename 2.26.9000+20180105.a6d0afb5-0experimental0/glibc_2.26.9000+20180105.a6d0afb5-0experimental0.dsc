-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: glibc
Binary: libc-bin, libc-dev-bin, libc-l10n, glibc-doc, glibc-source, locales, locales-all, nscd, multiarch-support, libc6, libc6-dev, libc6-dbg, libc6-pic, libc6-udeb, libc6.1, libc6.1-dev, libc6.1-dbg, libc6.1-pic, libc6.1-udeb, libc0.3, libc0.3-dev, libc0.3-dbg, libc0.3-pic, libc0.3-udeb, libc0.1, libc0.1-dev, libc0.1-dbg, libc0.1-pic, libc0.1-udeb, libc6-i386, libc6-dev-i386, libc6-sparc, libc6-dev-sparc, libc6-sparc64, libc6-dev-sparc64, libc6-s390, libc6-dev-s390, libc6-amd64, libc6-dev-amd64, libc6-powerpc, libc6-dev-powerpc, libc6-ppc64, libc6-dev-ppc64, libc6-mips32, libc6-dev-mips32, libc6-mipsn32, libc6-dev-mipsn32, libc6-mips64, libc6-dev-mips64, libc0.1-i386, libc0.1-dev-i386, libc6-x32, libc6-dev-x32, libc6-xen, libc0.3-xen, libc6.1-alphaev67
Architecture: any all
Version: 2.26.9000+20180105.a6d0afb5-0experimental0
Maintainer: GNU Libc Maintainers <debian-glibc@lists.debian.org>
Uploaders: Clint Adams <clint@debian.org>, Aurelien Jarno <aurel32@debian.org>, Adam Conrad <adconrad@0c3.net>, Samuel Thibault <sthibault@debian.org>
Homepage: https://www.gnu.org/software/libc/libc.html
Standards-Version: 4.1.3
Vcs-Browser: https://anonscm.debian.org/cgit/pkg-glibc/glibc.git
Vcs-Git: https://anonscm.debian.org/git/pkg-glibc/glibc.git
Testsuite: autopkgtest
Testsuite-Triggers: binutils, fakeroot, gcc-7, linux-libc-dev
Build-Depends: gettext, dpkg (>= 1.18.7), dpkg-dev (>= 1.17.14), xz-utils, file, quilt, autoconf, gawk, debhelper (>= 10), rdfind, symlinks, netbase, gperf, bison, linux-libc-dev (>= 3.9) [linux-any], libaudit-dev [linux-any], libcap-dev [linux-any], libselinux-dev [linux-any], mig (>= 1.5-3) [hurd-i386], gnumach-dev (>= 2:1.8+git20170102-1~) [hurd-i386], hurd-dev (>= 1:0.9.git20171119-2~) [hurd-i386] | hurd-headers-dev [hurd-i386], hurd-dev (>= 1:0.9.git20171119-2~) [hurd-i386] <!stage1> | libihash-dev [hurd-i386] <!stage1>, kfreebsd-kernel-headers [kfreebsd-any], binutils (>= 2.25), g++-7, g++-7-multilib [amd64 i386 kfreebsd-amd64 mips mipsel mipsn32 mipsn32el mips64 mips64el mipsr6 mipsr6el mipsn32r6 mipsn32r6el mips64r6 mips64r6el powerpc ppc64 s390x sparc sparc64 x32], python3:native <!nocheck>, libc-bin (>= 2.26.9000) <cross>
Build-Depends-Indep: perl, po-debconf (>= 1.0)
Package-List:
 glibc-doc deb doc optional arch=all profile=!stage1
 glibc-source deb devel optional arch=all profile=!stage1
 libc-bin deb libs required arch=any profile=!stage1 essential=yes
 libc-dev-bin deb libdevel optional arch=any profile=!stage1
 libc-l10n deb localization standard arch=all profile=!stage1
 libc0.1 deb libs required arch=kfreebsd-amd64,kfreebsd-i386 profile=!stage1
 libc0.1-dbg deb debug optional arch=kfreebsd-amd64,kfreebsd-i386 profile=!stage1
 libc0.1-dev deb libdevel optional arch=kfreebsd-amd64,kfreebsd-i386
 libc0.1-dev-i386 deb libdevel optional arch=kfreebsd-amd64 profile=!nobiarch
 libc0.1-i386 deb libs optional arch=kfreebsd-amd64 profile=!stage1,!nobiarch
 libc0.1-pic deb libdevel optional arch=kfreebsd-amd64,kfreebsd-i386 profile=!stage1
 libc0.1-udeb udeb debian-installer optional arch=kfreebsd-amd64,kfreebsd-i386 profile=!stage1
 libc0.3 deb libs required arch=hurd-i386 profile=!stage1
 libc0.3-dbg deb debug optional arch=hurd-i386 profile=!stage1
 libc0.3-dev deb libdevel optional arch=hurd-i386
 libc0.3-pic deb libdevel optional arch=hurd-i386 profile=!stage1
 libc0.3-udeb udeb debian-installer optional arch=hurd-i386 profile=!stage1
 libc0.3-xen deb libs optional arch=hurd-i386 profile=!stage1
 libc6 deb libs required arch=amd64,arm64,armel,armhf,hppa,i386,m68k,mips,mipsel,mipsn32,mipsn32el,mips64,mips64el,mipsr6,mipsr6el,mipsn32r6,mipsn32r6el,mips64r6,mips64r6el,nios2,powerpc,powerpcspe,ppc64,ppc64el,sparc,sparc64,s390x,sh3,sh4,x32 profile=!stage1
 libc6-amd64 deb libs optional arch=i386,x32 profile=!stage1,!nobiarch
 libc6-dbg deb debug optional arch=amd64,arm64,armel,armhf,hppa,i386,m68k,mips,mipsel,mipsn32,mipsn32el,mips64,mips64el,mipsr6,mipsr6el,mipsn32r6,mipsn32r6el,mips64r6,mips64r6el,nios2,powerpc,powerpcspe,ppc64,ppc64el,sparc,sparc64,s390x,sh3,sh4,x32 profile=!stage1
 libc6-dev deb libdevel optional arch=amd64,arm64,armel,armhf,hppa,i386,m68k,mips,mipsel,mipsn32,mipsn32el,mips64,mips64el,mipsr6,mipsr6el,mipsn32r6,mipsn32r6el,mips64r6,mips64r6el,nios2,powerpc,powerpcspe,ppc64,ppc64el,sparc,sparc64,s390x,sh3,sh4,x32
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
 libc6-pic deb libdevel optional arch=amd64,arm64,armel,armhf,hppa,i386,m68k,mips,mipsel,mipsn32,mipsn32el,mips64,mips64el,mipsr6,mipsr6el,mipsn32r6,mipsn32r6el,mips64r6,mips64r6el,nios2,powerpc,powerpcspe,ppc64,ppc64el,sparc,sparc64,s390x,sh3,sh4,x32 profile=!stage1
 libc6-powerpc deb libs optional arch=ppc64 profile=!stage1,!nobiarch
 libc6-ppc64 deb libs optional arch=powerpc profile=!stage1,!nobiarch
 libc6-s390 deb libs optional arch=s390x profile=!stage1,!nobiarch
 libc6-sparc deb libs optional arch=sparc64 profile=!stage1,!nobiarch
 libc6-sparc64 deb libs optional arch=sparc profile=!stage1,!nobiarch
 libc6-udeb udeb debian-installer optional arch=amd64,arm64,armel,armhf,hppa,i386,m68k,mips,mipsel,mipsn32,mipsn32el,mips64,mips64el,mipsr6,mipsr6el,mipsn32r6,mipsn32r6el,mips64r6,mips64r6el,nios2,powerpc,powerpcspe,ppc64,ppc64el,sparc,sparc64,s390x,sh3,sh4,x32 profile=!stage1
 libc6-x32 deb libs optional arch=amd64,i386 profile=!stage1,!nobiarch
 libc6-xen deb libs optional arch=i386 profile=!stage1
 libc6.1 deb libs required arch=alpha,ia64 profile=!stage1
 libc6.1-alphaev67 deb libs optional arch=alpha profile=!stage1
 libc6.1-dbg deb debug optional arch=alpha,ia64 profile=!stage1
 libc6.1-dev deb libdevel optional arch=alpha,ia64
 libc6.1-pic deb libdevel optional arch=alpha,ia64 profile=!stage1
 libc6.1-udeb udeb debian-installer optional arch=alpha,ia64 profile=!stage1
 locales deb localization standard arch=all profile=!stage1
 locales-all deb localization optional arch=any profile=!stage1
 multiarch-support deb oldlibs optional arch=any profile=!stage1
 nscd deb admin optional arch=any profile=!stage1
Checksums-Sha1:
 7a146530cf8f1e98bc8ca08eba139f997354493d 15860928 glibc_2.26.9000+20180105.a6d0afb5.orig.tar.xz
 4079fd11b93b0ce5e3f778bccb558b599fa2328f 899404 glibc_2.26.9000+20180105.a6d0afb5-0experimental0.debian.tar.xz
Checksums-Sha256:
 2694a39c80e39fe4d97b07b8f6759384e0c82fab4d3e7264eef61b6a1ea18e08 15860928 glibc_2.26.9000+20180105.a6d0afb5.orig.tar.xz
 9b87698419526f712e4f119fa2ee4b2bb7e85adc64be606d907b7c76a9d82c64 899404 glibc_2.26.9000+20180105.a6d0afb5-0experimental0.debian.tar.xz
Files:
 1080c9fa14d4ce50f7bffd9e82ebf847 15860928 glibc_2.26.9000+20180105.a6d0afb5.orig.tar.xz
 8bfb1bdcb6a335fe91f19c1bccc51df8 899404 glibc_2.26.9000+20180105.a6d0afb5-0experimental0.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEd0YmQqnvlP0Pdxltupx4Bh3djJsFAlpP6g0ACgkQupx4Bh3d
jJvhGA/9GwZNVoYIBFYnC2pCc4hb9iqOFxZwAwcV4LisTLxJNSMwdzqYmxwaJxqd
rtslhAp6syh0px7TCRLA9pzW+3mbkbI67kwVUgLJDNcT8FkqJgZprQsIo+052g97
aWbFF068dHzA8CCUizQATgNvyH9KUxACchS7jxqVRAF+ZdwQmv16GyZGRhDTZ+Ih
LPNBOjzDxczQ/u4InyLwSIlE61Q2eQ33+gYPvffsOMd2yYHxly//yx68IG1cdyRT
5wHJYp3mDGHYXHB9BhFiRZeqTiCWsSiqTcXGNg3kR5+VpWGpjB3/Tk3sR5p27Iy/
YHtnNYfioWogvAqbDmXMXvCrIDdDwQy6y8zDxHYsTgHqaU0rTXb2BpjWzfjaF9E/
U7iTHeyOdeLhsRKUDwTSX5t8+X4A5x/Vwyi63ioGM7A95geFtvEOjDbi2bNtfCR/
MBTe4StIylbqDXWw69GXRztnxxb4hqajcq7of10z/lKfkTrwAlGqN+4HkwCG5LdX
DCiDREPGuXTMSzKiD+WUAQMO09qwdyGQ6z21aMgKX+pA5V74KlSavtXHXN86/mTn
QSxA3i6kIeNv9nb8e9EfpydREZB0u7eXa8l70+jGxdqO7JnGQo1U3CZ4LEJrGJ8S
ZKlWI4BU0G0avFWgKoxKPMUtW1wtXPd5ONSJVXFV5pM232Nzv+4=
=sxMP
-----END PGP SIGNATURE-----
