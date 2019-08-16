/* Compat glob which does not use gl_lstat for GLOB_ALTDIRFUNC.
   GNU version
   Copyright (C) 2017-2019 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

#include <sys/stat.h>
#include <shlib-compat.h>

#define glob64 __no_glob64_decl
#include <glob.h>
#undef glob64

#define __glob __glob_lstat_compat

#define GLOB_ATTRIBUTE attribute_compat_text_section

/* Avoid calling gl_lstat with GLOB_ALTDIRFUNC.  */
#define GLOB_NO_LSTAT

#include <posix/glob.c>

#if SHLIB_COMPAT(libc, GLIBC_2_0, GLIBC_2_27)
compat_symbol (libc, __glob_lstat_compat, glob, GLIBC_2_0);
#endif
