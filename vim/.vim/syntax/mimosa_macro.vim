" Vim syntax file
" Language:     Mimosa macro input files (*.mac)
" Maintainer:   Håkon Skår - haakon.skaar@gmail.com

" Simple syntax file to highlight comments and keywords

" MimosaMacro commands are case-insensitive
syn case ignore

" The following main keywords are taken from the Mimosa user manuals
"
syn keyword mimosaMacroStatement BATCH
syn keyword mimosaMacroStatement CLOSE
syn keyword mimosaMacroStatement CREATE
syn keyword mimosaMacroStatement DISPLAY
syn keyword mimosaMacroStatement DO
syn keyword mimosaMacroStatement FILE
syn keyword mimosaMacroStatement HELP
syn keyword mimosaMacroStatement LIST
syn keyword mimosaMacroStatement OFF
syn keyword mimosaMacroStatement ON
syn keyword mimosaMacroStatement RANGE
syn keyword mimosaMacroStatement RESULT
syn keyword mimosaMacroStatement SPAWN
syn keyword mimosaMacroStatement STATUS
syn keyword mimosaMacroStatement WAIT
"
syn region mimosaMacroComment start="'" end="$"

syn match mimosaMacroOperator "[@]"

highlight link mimosaMacroStatement Statement
highlight link mimosaMacroComment Comment
highlight link mimosaMacroOperator Operator

let b:current_syntax = "mimosaMacro"
