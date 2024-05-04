define(`getdate', `esyscmd(date | tr -d "\n")')dnl
define(`getuser', `esyscmd(whoami | tr -d "\n")')dnl
define(`compile_signature', `Compiled at getdate() by getuser()')dnl
define(`include_with_header', `
changequote({, })dnl Change quote characters temporarily
define(`base_name', translit(substr($1, 13, len($1) - 16), `abcdefghijklmnopqrstuvwxyz', `ABCDEFGHIJKLMNOPQRSTUVWXYZ'))dnl Extract and convert base part
changequote()dnl Revert quote change

## Operators: `base_name'
include($1)
')dnl
define(`list_operator_files', `
dnl List all your files
define(`file_list', `ps-operators-a.md,ps-operators-b.md,ps-operators-c1.md,ps-operators-c2.md,ps-operators-d.md,ps-operators-e.md,ps-operators-g.md,ps-operators-hijk.md,ps-operators-lmn.md,ps-operators-opq.md,ps-operators-r.md,ps-operators-s1.md,ps-operators-s2.md,ps-operators-tuvwxy.md')

dnl Apply the include_with_header macro to each file
foreach(`include_with_header', file_list)')dnl


