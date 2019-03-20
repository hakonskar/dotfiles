" Vim syntax file
" Language:     Mimosa input files (*.mim)
" Maintainer:   Håkon Skår - haksk@statoil.com

" Simple syntax file to highlight comments and keywords

" Mimosa commands are case-insensitive
syn case ignore

" The following main keywords are taken from the Mimosa user manuals
syn keyword mimosaStatement BUOY
syn keyword mimosaStatement CHARACTERISTICS
syn keyword mimosaStatement DATA
syn keyword mimosaStatement END
syn keyword mimosaStatement LINE
syn keyword mimosaStatement POSITION
syn keyword mimosaStatement VESSEL
"
"
syn region mimosaComment start="'" end="$"

"syn match mimosaOperator "[()+.,\-/*=&]"
"syn match mimosaOperator "[(),\/*=&]"
"syn match mimosaOperator "[<>]=\="

highlight link mimosaStatement Statement
highlight link mimosaComment Comment
"highlight link mimosaOperator Operator

let b:current_syntax = "mimosa"
