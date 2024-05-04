dnl This is an m4 document. You need to preprocess it with GNU m4 specifically. Why not any other m4?
dnl Well because I use the 'esyscmd' command. The OG macro found on BSD/MacOS does not support it.
dnl Every text beginning with 'dnl' will be ignored.
dnl You can run `make preprocess` to preprocess this file into `ps-index.md`
dnl You may also run commands like `make html` or `make latex`
include(`handy-macros.m4')dnl include the handy macros
dnl The main document
# An Summary of the PostScript Page Description Language
### Syntax, Functions, Arrays, Dictionaries, Control Structures, Fonts
### A Complete List of Operators, Errors, and Stack Signatures
#### A Document by Chubak Bidpaa
ifdef(`EMIT_SIGNATURE', compile_signature())dnl Compile signature of EMIT_SIGNATURE is defined

## PostScript: An Overview

include(`ps-overview.md')dnl the overview


## The Syntax of PostScript

include(`ps-syntax.md')dnl the syntax

## The Sig
