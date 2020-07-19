-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Format: 1.0
Source: glibc
Binary: glibc-doc, glibc-source, locales, locales-all, nscd, libc6, libc6-dev, libc6-dbg, libc6-prof, libc6-pic, libc6-udeb, libc6.1, libc6.1-dev, libc6.1-dbg, libc6.1-prof, libc6.1-pic, libc6.1-udeb, libc0.3, libc0.3-dev, libc0.3-dbg, libc0.3-prof, libc0.3-pic, libc0.3-udeb, libc0.1, libc0.1-dev, libc0.1-dbg, libc0.1-prof, libc0.1-pic, libc0.1-udeb, libc6-i386, libc6-dev-i386, libc6-sparc64, libc6-dev-sparc64, libc6-s390x, libc6-dev-s390x, libc6-amd64, libc6-dev-amd64, libc6-powerpc, libc6-dev-powerpc, libc6-ppc64, libc6-dev-ppc64, libc6-mipsn32, libc6-dev-mipsn32, libc6-mips64, libc6-dev-mips64, libc0.1-i386, libc0.1-dev-i386, libc6-sparcv9b, libc6-i686, libc6-xen, libc0.1-i686, libc6.1-alphaev67, libnss-dns-udeb, libnss-files-udeb
Architecture: any
Version: 2.9-10
Maintainer: GNU Libc Maintainers <debian-glibc@lists.debian.org>
Uploaders: Ben Collins <bcollins@debian.org>, GOTO Masanori <gotom@debian.org>, Philip Blundell <pb@nexus.co.uk>, Jeff Bailey <jbailey@raspberryginger.com>, Daniel Jacobowitz <dan@debian.org>, Clint Adams <schizo@debian.org>, Aurelien Jarno <aurel32@debian.org>, Pierre Habouzit <madcoder@debian.org>
Standards-Version: 3.8.1
Vcs-Browser: http://svn.debian.org/wsvn/pkg-glibc/glibc-package/
Vcs-Svn: svn://svn.debian.org/pkg-glibc/glibc-package/
Build-Depends: gettext, make (>= 3.80), dpkg-dev (>= 1.14.17), bzip2, lzma, file, quilt, autoconf, sed (>= 4.0.5-4), gawk, debhelper (>= 5.0), linux-libc-dev [!hurd-i386 !kfreebsd-i386 !kfreebsd-amd64], mig (>= 1.3-2) [hurd-i386], hurd-dev (>= 20080607-3) [hurd-i386], gnumach-dev [hurd-i386], libpthread-stubs0-dev [hurd-i386], kfreebsd-kernel-headers [kfreebsd-i386 kfreebsd-amd64], binutils (>= 2.17cvs20070426), g++-4.3 (>= 4.3.0-7), g++-4.3-multilib [amd64 i386 kfreebsd-amd64 mips mipsel powerpc ppc64 s390 sparc], g++-4.3 (>= 4.3.3-2) [alpha]
Build-Depends-Indep: perl, po-debconf (>= 1.0)
Checksums-Sha1: 
 a6c11ee5e0960d8e1d1d108dc2bd95c749d3831a 22263777 glibc_2.9.orig.tar.gz
 72b41f35bd6a19919d6513ae35c08044cbcf0645 735118 glibc_2.9-10.diff.gz
Checksums-Sha256: 
 2ad465280f7425a601f2da0da30b2320dc9fcb797818b898b4351fa474b84066 22263777 glibc_2.9.orig.tar.gz
 adab8a866a34f04b70f4bd647a6ab3ac394e14afd4dd9e7abe79f61d307eac2d 735118 glibc_2.9-10.diff.gz
Files: 
 b6d53da3ec6958b118906f533bc24a0a 22263777 glibc_2.9.orig.tar.gz
 cd6e6ec36bf5214e1eba96230bdd7e7b 735118 glibc_2.9-10.diff.gz

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iD8DBQFJ/42nw3ao2vG823MRApHwAJ9ud37RQciOqURuGkOJbH1KjMsZ6wCcDP+S
g1Yj2SBTQ/Ryvt5FHKY7vro=
=nxjr
-----END PGP SIGNATURE-----
