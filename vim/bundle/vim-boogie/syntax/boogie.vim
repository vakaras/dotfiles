" Vim syntax file
" Language: Boogie
" Maintainer: Vytautas Astrauskas
" Latest Revision: 07 February 2015

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "boogie"

syn keyword mainKeywords var procedure function axiom const type returns call if else havoc
"syn keyword controlStatements while
"syn keyword parallelControlStatements fork join share acquire release
syn keyword contractStatements modifies assume assert requires ensures free
syn keyword types int real bool
syn keyword specialValues true false
syn keyword builtinPredicates forall

"syn region codeBlock start="{" end="}" fold transparent
syn region comment start="//" end="\n" fold contains=@Spell
syn region comment start="/\*" end="\*/" fold contains=@Spell

hi! def link mainKeywords SpecialKey
"hi! def link controlStatements SpecialKey
"hi! def link objectDefinitions SpecialKey
hi! def link contractStatements SpecialKey
"hi! def link parallelControlStatements SpecialKey
hi! def link specialValues LineNr
hi! def builtinPredicates term=bold cterm=bold gui=bold
hi! def link types Type
