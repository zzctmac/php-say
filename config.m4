dnl $Id$
dnl config.m4 for extension say

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(say, for say support,
dnl Make sure that the comment is aligned:
dnl [  --with-say             Include say support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(say, whether to enable say support,
Make sure that the comment is aligned:
[  --enable-say           Enable say support])

if test "$PHP_SAY" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-say -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/say.h"  # you most likely want to change this
  dnl if test -r $PHP_SAY/$SEARCH_FOR; then # path given as parameter
  dnl   SAY_DIR=$PHP_SAY
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for say files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       SAY_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$SAY_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the say distribution])
  dnl fi

  dnl # --with-say -> add include path
  dnl PHP_ADD_INCLUDE($SAY_DIR/include)

  dnl # --with-say -> check for lib and symbol presence
  dnl LIBNAME=say # you may want to change this
  dnl LIBSYMBOL=say # you most likely want to change this

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $SAY_DIR/$PHP_LIBDIR, SAY_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_SAYLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong say lib version or lib not found])
  dnl ],[
  dnl   -L$SAY_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(SAY_SHARED_LIBADD)

  PHP_NEW_EXTENSION(say, say.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
