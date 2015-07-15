" Vim syntax file
" Language: Silver
" Maintainer: Vytautas Astrauskas
" Latest Revision: 07 February 2015

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "sil"

syn keyword mainKeywords var new
syn keyword objectDefinitions field method returns
syn keyword controlStatements if else
syn keyword contractStatements requires ensures inhale exhale
syn keyword types Int Ref Bool
syn keyword specialValues null true false write none
syn keyword builtinFunctions acc old

syn region codeBlock start="{" end="}" fold transparent
syn region comment start="/\*" end="\*/" fold

hi! def link mainKeywords SpecialKey
hi! def link controlStatements SpecialKey
hi! def link objectDefinitions SpecialKey
hi! def link contractStatements SpecialKey
hi! def link specialValues LineNr
hi! def builtinFunctions term=bold cterm=bold gui=bold
hi! def link types Type
