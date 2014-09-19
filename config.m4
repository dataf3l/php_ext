dnl $Id$
dnl config.m4 for extension algo

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(algo, for algo support,
dnl Make sure that the comment is aligned:
dnl [  --with-algo             Include algo support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(algo, whether to enable algo support,
[  --enable-algo           Enable algo support])

if test "$PHP_ALGO" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-algo -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/algo.h"  # you most likely want to change this
  dnl if test -r $PHP_ALGO/$SEARCH_FOR; then # path given as parameter
  dnl   ALGO_DIR=$PHP_ALGO
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for algo files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       ALGO_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$ALGO_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the algo distribution])
  dnl fi

  dnl # --with-algo -> add include path
  dnl PHP_ADD_INCLUDE($ALGO_DIR/include)

  dnl # --with-algo -> check for lib and symbol presence
  dnl LIBNAME=algo # you may want to change this
  dnl LIBSYMBOL=algo # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $ALGO_DIR/lib, ALGO_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_ALGOLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong algo lib version or lib not found])
  dnl ],[
  dnl   -L$ALGO_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(ALGO_SHARED_LIBADD)

  PHP_NEW_EXTENSION(algo, algo.c, $ext_shared)
fi
