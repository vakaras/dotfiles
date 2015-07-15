" Vim syntax file
" Language: Chalice
" Maintainer: Vytautas Astrauskas
" Latest Revision: 07 February 2015

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "chalice"

syn keyword mainKeywords var new
syn keyword objectDefinitions class method returns
syn keyword controlStatements while
syn keyword parallelControlStatements fork join share acquire release
syn keyword contractStatements requires ensures invariant assert
syn keyword types Obj int
syn keyword specialValues null
syn keyword builtinPredicates acc releases

"syn region codeBlock start="{" end="}" fold transparent
syn region comment start="//" end="\n" fold contains=@Spell

hi! def link mainKeywords SpecialKey
hi! def link controlStatements SpecialKey
hi! def link objectDefinitions SpecialKey
hi! def link contractStatements SpecialKey
hi! def link parallelControlStatements SpecialKey
hi! def link specialValues LineNr
hi! def builtinPredicates term=bold cterm=bold gui=bold
hi! def link types Type
