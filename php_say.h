/*
  +----------------------------------------------------------------------+
  | PHP Version 7                                                        |
  +----------------------------------------------------------------------+
  | Copyright (c) 1997-2015 The PHP Group                                |
  +----------------------------------------------------------------------+
  | This source file is subject to version 3.01 of the PHP license,      |
  | that is bundled with this package in the file LICENSE, and is        |
  | available through the world-wide-web at the following url:           |
  | http://www.php.net/license/3_01.txt                                  |
  | If you did not receive a copy of the PHP license and are unable to   |
  | obtain it through the world-wide-web, please send a note to          |
  | license@php.net so we can mail you a copy immediately.               |
  +----------------------------------------------------------------------+
  | Author:                                                              |
  +----------------------------------------------------------------------+
*/

/* $Id$ */

#ifndef PHP_SAY_H
#define PHP_SAY_H

extern zend_module_entry say_module_entry;
#define phpext_say_ptr &say_module_entry

#define PHP_SAY_VERSION "0.1.0" /* Replace with version number for your extension */

#ifdef PHP_WIN32
#	define PHP_SAY_API __declspec(dllexport)
#elif defined(__GNUC__) && __GNUC__ >= 4
#	define PHP_SAY_API __attribute__ ((visibility("default")))
#else
#	define PHP_SAY_API
#endif

#ifdef ZTS
#include "TSRM.h"
#endif

/*
  	Declare any global variables you may need between the BEGIN
	and END macros here:

ZEND_BEGIN_MODULE_GLOBALS(say)
	zend_long  global_value;
	char *global_string;
ZEND_END_MODULE_GLOBALS(say)
*/

/* Always refer to the globals in your function as SAY_G(variable).
   You are encouraged to rename these macros something shorter, see
   examples in any other php module directory.
*/

#ifdef ZTS
#define SAY_G(v) ZEND_TSRMG(say_globals_id, zend_say_globals *, v)
#ifdef COMPILE_DL_SAY
ZEND_TSRMLS_CACHE_EXTERN();
#endif
#else
#define SAY_G(v) (say_globals.v)
#endif

#endif	/* PHP_SAY_H */


/*
 * Local variables:
 * tab-width: 4
 * c-basic-offset: 4
 * End:
 * vim600: noet sw=4 ts=4 fdm=marker
 * vim<600: noet sw=4 ts=4
 */
