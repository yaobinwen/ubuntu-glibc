ifeq ($(DEB_HOST_ARCH),$(DEB_BUILD_ARCH))
CC     = gcc-4.2 -fno-stack-protector -U_FORTIFY_SOURCE
CXX    = g++-4.2 -fno-stack-protector -U_FORTIFY_SOURCE
endif

# To build the NPTL version of the glibc on hppa, uncomment the following line
# and comment the two next ones. Note that it is currently not binary 
# compatible with the linuxthreads version.
libc_add-ons = ports nptl $(add-ons)

# We need LWS CAS support
libc_MIN_KERNEL_SUPPORTED = 2.6.9

# Some tests assume a fast machine
TIMEOUTFACTOR=2

# hppa64 needs symlink /usr/hppa64-linux/include to /usr/include
# (See: Bug#239020)  In future we may drop this file with supporting hppa64.

define libc6-dev_extra_pkg_install
mkdir -p debian/$(curpass)/usr
mkdir -p debian/$(curpass)/usr/hppa64-linux
ln -sf /usr/include debian/$(curpass)/usr/hppa64-linux/include
mkdir -p debian/$(curpass)/usr/hppa64-linux-gnu
ln -sf /usr/include debian/$(curpass)/usr/hppa64-linux-gnu/include
endef

