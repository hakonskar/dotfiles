" Vim syntax file
" Language:     DnV SESAM input files (*.jnl), PRESEL
" Maintainer:   Håkon Skår - haakon.skaar@gmail.com

" SESAM is case insensitive
syn case ignore

" The following main keywords taken from the Presel user manual
syn keyword preselStatement ASSEMBLY
syn keyword preselStatement BOUNDARY
syn keyword preselStatement CHANGE
syn keyword preselStatement COORDINATESYSTEM
syn keyword preselStatement DEFINE
syn keyword preselStatement DELETE
syn keyword preselStatement DISPLAY
syn keyword preselStatement EXIT
syn keyword preselStatement HELP
syn keyword preselStatement INCLUDE
syn keyword preselStatement LABEL
syn keyword preselStatement LINEARDEPENDENCY
syn keyword preselStatement LOAD
syn keyword preselStatement NAME
syn keyword preselStatement OPTIMIZE
syn keyword preselStatement PLOT
syn keyword preselStatement PRINT
syn keyword preselStatement READ
syn keyword preselStatement ROTATE
syn keyword preselStatement SET
syn keyword preselStatement TAG
syn keyword preselStatement TASK
syn keyword preselStatement TRANSFORMATION
syn keyword preselStatement UNTAG
syn keyword preselStatement WRITE
syn keyword preselStatement ZOOM

syn region preselComment start="%" end="$"
syn region preselString start=+"+ end=+"+

syn match preselOperator "[()+.,\-/*=&]"
syn match preselOperator "[<>]=\="

highlight link preselStatement Statement
highlight link preselComment Comment
highlight link preselString String
highlight link preselOperator Operator

let b:current_syntax = "presel"
