/* Determine the wordsize from the preprocessor defines.  */

#ifdef __LP64__
# define __WORDSIZE	64
# define __WORDSIZE_TIME64_COMPAT32	1
#else
# define __WORDSIZE	32
# define __WORDSIZE_TIME64_COMPAT32	0
# define __WORDSIZE32_SIZE_ULONG	0
# define __WORDSIZE32_PTRDIFF_LONG	0
#endif
