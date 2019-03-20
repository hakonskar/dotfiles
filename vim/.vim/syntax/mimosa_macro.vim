" Vim syntax file
" Language:		Mimosa macro input files (*.mac)
" 			Simple syntax file to highlight comments and keywords
" Maintainer:		Håkon Skår - haksk@statoil.com
" Company:     		StatoilMarine Operations
" Last Change:		20 March 2009
" (G)VIM version:	7.2


" Mimosa_macro commands are case-insensitive
syn case ignore

" The following main keywords are taken from the Mimosa user manuals
"
syn keyword mimosa_macroStatement BATCH
syn keyword mimosa_macroStatement CLOSE
syn keyword mimosa_macroStatement CREATE
syn keyword mimosa_macroStatement DISPLAY
syn keyword mimosa_macroStatement DO
syn keyword mimosa_macroStatement FILE
syn keyword mimosa_macroStatement HELP
syn keyword mimosa_macroStatement LIST
syn keyword mimosa_macroStatement OFF
syn keyword mimosa_macroStatement ON
syn keyword mimosa_macroStatement RANGE
syn keyword mimosa_macroStatement RESULT
syn keyword mimosa_macroStatement SPAWN
syn keyword mimosa_macroStatement STATUS
syn keyword mimosa_macroStatement WAIT
"
syn region mimosa_macroComment start="'" end="$"

syn match mimosa_macroOperator "[@]"

highlight link mimosa_macroStatement Statement
highlight link mimosa_macroComment Comment
highlight link mimosa_macroOperator Operator

let b:current_syntax = "mimosa_macro"
