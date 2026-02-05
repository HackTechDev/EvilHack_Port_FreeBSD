--- include/system.h.orig	2026-02-05 18:56:46.005974000 +0000
+++ include/system.h	2026-02-05 18:57:23.498925000 +0000
@@ -573,9 +573,6 @@
 #else
 #if !(defined(HPUX) && defined(_POSIX_SOURCE))
 E int FDECL(tgetent, (char *, const char *));
-#ifndef HAVE_TPUTS
-E void FDECL(tputs, (const char *, int, int (*)()));
-#endif /* HAVE_TPUTS */
 #endif
 E int FDECL(tgetnum, (const char *));
 E int FDECL(tgetflag, (const char *));
