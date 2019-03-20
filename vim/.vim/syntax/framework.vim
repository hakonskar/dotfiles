" Vim syntax file
" Language:	    DnV SESAM input files (*.jnl), FRAMEWORK
" Maintainer:	Håkon Skår - haakon.skaar@akersolutions.com
" Company:      Aker Kværner Offshore Partner AS Bergen
" Last Change:	08.01.2007


" SESAM is case insensitive
syn case ignore

" The following main keywords taken from the Framework user manual
syn keyword frameworkStatement ASSIGN
syn keyword frameworkStatement CHANGE
syn keyword frameworkStatement CREATE
syn keyword frameworkStatement DEFINE
syn keyword frameworkStatement DELETE
syn keyword frameworkStatement DISPLAY
syn keyword frameworkStatement FILE
syn keyword frameworkStatement PLOT
syn keyword frameworkStatement PRINT
syn keyword frameworkStatement RUN
syn keyword frameworkStatement SELECT
syn keyword frameworkStatement SET
syn keyword frameworkStatement TASK
syn keyword frameworkStatement VIEW

syn region frameworkComment start="%" end="$"
syn region frameworkString start=+"+ end=+"+

syn match frameworkOperator "[()+.,\-/*=&]"
syn match frameworkOperator "[<>]=\="

highlight link frameworkStatement Statement
highlight link frameworkComment Comment
highlight link frameworkString String
highlight link frameworkOperator Operator

let b:current_syntax = "framework"
