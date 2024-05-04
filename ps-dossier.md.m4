dnl This is an m4 document. You need to preprocess it with GNU m4 specifically. Why not any other m4?
dnl Well because I use the 'esyscmd] command. The OG macro found on BSD/MacOS does not support it.
dnl Every text beginning with 'dnl' will be ignored.
dnl You can run `make preprocess` to preprocess this file into `ps-dossier.md`
dnl You may also run commands like `make html` or `make latex`
include(`handy-macros.m4')dnl include the handy macros
dnl The main document
# An Dossier of the PostScript Page Description Language
### Syntax, Functions, Arrays, Dictionaries, Control Structures, Fonts
### A Complete List of Operators, Errors, and Stack Signatures
#### A Document by Chubak Bidpaa

changequote([,])dnl

## PostScript: An Overview

include([ps-overview.md])dnl the overview

## The Syntax of PostScript

include([ps-syntax.md])dnl the syntax

## The Signatures of Operators

include([ps-signatures.md])dnl the signatures of operators

## The Operators

include_operators()dnl include the operator files

## The Errors

include([ps-errors.md])dnl the errors

## The Functions

include([ps-functions.md])dnl the functions


## The Control Structures

include([ps-ctrlstruct.md])dnl the control structures

## The Dictionaries

include([ps-dicts.md])dnl the dictionaries

## The Arrays

include([ps-arrays.md])dnl the arrays

## The Fonts

include([ps-fonts.md])dnl the fonts

## Resources

include([ps-resources.md])dnl the resources

**End of document**
compile_signature()

