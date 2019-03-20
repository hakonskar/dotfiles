" Vim syntax file
" Language:     DnV WAJAC input files (*.inp)
" Maintainer:   Håkon Skår - haakon.skaar@gmail.com

" SESAM is case insensitive
syn case ignore

" The followint main keywords taken from the Wajac user manual
syn keyword wajacStatement AMP
syn keyword wajacStatement API
syn keyword wajacStatement CDIA
syn keyword wajacStatement CDIR
syn keyword wajacStatement CDIX
syn keyword wajacStatement CDRG
syn keyword wajacStatement CDWN
syn keyword wajacStatement CDWR
syn keyword wajacStatement CHCK
syn keyword wajacStatement CMAS
syn keyword wajacStatement COEF
syn keyword wajacStatement CONDCT
syn keyword wajacStatement CONS
syn keyword wajacStatement CPRI
syn keyword wajacStatement CRNT
syn keyword wajacStatement DENS
syn keyword wajacStatement DPTH
syn keyword wajacStatement ELIM
syn keyword wajacStatement END
syn keyword wajacStatement EQVL
syn keyword wajacStatement ERG
syn keyword wajacStatement FLOO
syn keyword wajacStatement FMOD
syn keyword wajacStatement FRQ
syn keyword wajacStatement FWAVE
syn keyword wajacStatement GEOM
syn keyword wajacStatement GRID
syn keyword wajacStatement HYDR
syn keyword wajacStatement KPRT
syn keyword wajacStatement KSCA
syn keyword wajacStatement LEG
syn keyword wajacStatement LOAD
syn keyword wajacStatement LOASIM
syn keyword wajacStatement LONO
syn keyword wajacStatement MASS
syn keyword wajacStatement MEMGRW
syn keyword wajacStatement MEMSEG
syn keyword wajacStatement MGRW
syn keyword wajacStatement MODE
syn keyword wajacStatement MOMT
syn keyword wajacStatement MPRT
syn keyword wajacStatement MSEG
syn keyword wajacStatement MUDP
syn keyword wajacStatement NEWWAVE
syn keyword wajacStatement OMEG
syn keyword wajacStatement OPTI
syn keyword wajacStatement SEA
syn keyword wajacStatement SEAFRQ
syn keyword wajacStatement SEAOPT
syn keyword wajacStatement SEASIM
syn keyword wajacStatement SEGM
syn keyword wajacStatement SELI
syn keyword wajacStatement SPEC
syn keyword wajacStatement SPECTR
syn keyword wajacStatement SPEX
syn keyword wajacStatement TANK
syn keyword wajacStatement TITL
syn keyword wajacStatement WAJAC
syn keyword wajacStatement WIND

syn region wajacComment start="^C" end="$"
syn region wajacString start=+"+ end=+"+

syn match wajacOperator "[()+.,\-/*=&]"
syn match wajacOperator "[<>]=\="

highlight link wajacStatement Statement
highlight link wajacComment Comment
highlight link wajacString String
highlight link wajacOperator Operator

let b:current_syntax = "wajac"
