" Vim syntax file
" Language:	USFOS labels file (*.usl)
" Maintainer:	Håkon Skår - haakon.skaar@akersolutions.com
" Company:      Aker Offshore Partner AS Bergen
" Last Change:	29 April 2008


" USFOS is case insensitive
syn case ignore

" Keywords
syn keyword usfoslabelStatement HEADING
syn keyword usfoslabelStatement BEGINLABEL
syn keyword usfoslabelStatement ENDLABEL
syn keyword usfoslabelStatement ELEMENTLABEL
syn keyword usfoslabelStatement NODELABEL

syn region usfosLabelComment start="#" end="$"
syn region usfosLabelString start=+"+ end=+"+

syn match usfosLabelOperator "[()+.,\-/*=&]"
syn match usfosLabelOperator "[<>]=\="

highlight link usfosLabelStatement Statement
highlight link usfosLabelComment Comment
highlight link usfosLabelString String
highlight link usfosLabelOperator Operator

let b:current_syntax = "usfosLabel"
