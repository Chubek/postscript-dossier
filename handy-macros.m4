changequote([,])
define([getdate], [esyscmd(date | tr -d "\n")])dnl
define([getuser], [esyscmd(whoami | tr -d "\n")])dnl
define([compile_signature], [Compiled at getdate() by getuser()])dnl
define([dump_operators], [esyscmd(cat ps-operators-*.md)]])dnl
changequote()dnl
