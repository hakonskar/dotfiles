" Vim syntax file
" Language:	DnV SESAM input files (*.jnl), MANAGER
" Maintainer:	Håkon Skår - haakon.skaar@akersolutions.com
" Company:      Aker Kværner Offshore Partner AS Bergen
" Last Change:	08.01.2007


" SESAM is case insensitive
syn case ignore

" The following main keywords taken from the Framework user manual
syn keyword frameworkStatement FILE COPY
syn keyword frameworkStatement FILE DELETE
syn keyword frameworkStatement FILE RENAME
syn keyword frameworkStatement PROJECT CLOSE
syn keyword frameworkStatement PROJECT COPY
syn keyword frameworkStatement PROJECT DELETE
syn keyword frameworkStatement PROJECT DESCRIPTION
syn keyword frameworkStatement PROJECT DIRECTORY
syn keyword frameworkStatement PROJECT NEW
syn keyword frameworkStatement PROJECT OPEN
syn keyword frameworkStatement PROJECT RENAME
syn keyword frameworkStatement PROJECT ROOT DIRECTORY
syn keyword frameworkStatement RUN PRESEL
syn keyword frameworkStatement RUN PREFRAME
syn keyword frameworkStatement RUN PREFEM
syn keyword frameworkStatement RUN SESTRA
syn keyword frameworkStatement RUN WAJAC
syn keyword frameworkStatement RUN WADAM
syn keyword frameworkStatement RUN FRAMEWORK
syn keyword frameworkStatement RUN GENIE
syn keyword frameworkStatement SET FILE-HANDLING
syn keyword frameworkStatement SET PLOT
syn keyword frameworkStatement SET PROGRAM-PATH
syn keyword frameworkStatement SET PROGRAM-STARTUP
syn keyword frameworkStatement SET RESULT-FORMAT
syn keyword frameworkStatement SET RESULT-PREFIX
syn keyword frameworkStatement SET STRUCTURE-TYPE
syn keyword frameworkStatement SET SUPERELEMENT
syn keyword frameworkStatement SET TEMPORARY-FILES
syn keyword frameworkStatement SET FRAMEWORK SUPERELEMENT-KEY
syn keyword frameworkStatement SET ADVANCE
syn keyword frameworkStatement HELP
syn keyword frameworkStatement EXIT

syn region frameworkComment start="%" end="$"
syn region frameworkString start=+"+ end=+"+

syn match frameworkOperator "[()+.,\-/*=&]"
syn match frameworkOperator "[<>]=\="

highlight link frameworkStatement Statement
highlight link frameworkComment Comment
highlight link frameworkString String
highlight link frameworkOperator Operator

let b:current_syntax = "manager"
