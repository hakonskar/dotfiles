" Vim syntax file
" Language:     GENSOD input files (*.fem)
" Maintainer:   Håkon Skår - haakon.skaar@gmail.com

" Simple syntax file to highlight comments and keywords

" GENSOD commands are case-insensitive
syn case ignore

syn keyword gensodStatement AEMB
syn keyword gensodStatement API-J
syn keyword gensodStatement ATMPRS
syn keyword gensodStatement BEMB
syn keyword gensodStatement CMP
syn keyword gensodStatement CONFRC
syn keyword gensodStatement CONLTH
syn keyword gensodStatement DIAM
syn keyword gensodStatement DPCIRC
syn keyword gensodStatement DPEMB
syn keyword gensodStatement DSP
syn keyword gensodStatement DSPQZ
syn keyword gensodStatement DSPTZ
syn keyword gensodStatement EPSC
syn keyword gensodStatement ESOL0
syn keyword gensodStatement ESOL1
syn keyword gensodStatement FACT
syn keyword gensodStatement FCT
syn keyword gensodStatement G0
syn keyword gensodStatement GAMMAW
syn keyword gensodStatement GAMPWP
syn keyword gensodStatement GAMTOT
syn keyword gensodStatement GAP
syn keyword gensodStatement HOLE
syn keyword gensodStatement JECHO
syn keyword gensodStatement JPRINT
syn keyword gensodStatement LAY
syn keyword gensodStatement LAYERS
syn keyword gensodStatement LINE1
syn keyword gensodStatement LINE2
syn keyword gensodStatement MIDBOT
syn keyword gensodStatement NUMDIA
syn keyword gensodStatement NUMDSP
syn keyword gensodStatement NUMFRC
syn keyword gensodStatement NUMLAY
syn keyword gensodStatement NUMPNT
syn keyword gensodStatement NUMTQZ
syn keyword gensodStatement NUMTYP
syn keyword gensodStatement OCR
syn keyword gensodStatement OPEN
syn keyword gensodStatement P
syn keyword gensodStatement PEAK
syn keyword gensodStatement PHI
syn keyword gensodStatement POIS
syn keyword gensodStatement POSAVR
syn keyword gensodStatement PYCODE
syn keyword gensodStatement Q
syn keyword gensodStatement QZCODE
syn keyword gensodStatement QZZ
syn keyword gensodStatement RADIUS
syn keyword gensodStatement RESID
syn keyword gensodStatement RFTZ
syn keyword gensodStatement SCRGEN
syn keyword gensodStatement SCRLOC
syn keyword gensodStatement SFSIGT
syn keyword gensodStatement SFSKF
syn keyword gensodStatement SFSU
syn keyword gensodStatement SFTPHI
syn keyword gensodStatement SIG
syn keyword gensodStatement SIGSRF
syn keyword gensodStatement SKIN
syn keyword gensodStatement SLOPE
syn keyword gensodStatement SOIL
syn keyword gensodStatement SU
syn keyword gensodStatement SUSTIF
syn keyword gensodStatement T
syn keyword gensodStatement TIP
syn keyword gensodStatement TMAX
syn keyword gensodStatement TNS
syn keyword gensodStatement TRES
syn keyword gensodStatement TYP
syn keyword gensodStatement TZCODE
syn keyword gensodStatement TZZ
syn keyword gensodStatement TZZRES
syn keyword gensodStatement VALUES
syn keyword gensodStatement X
syn keyword gensodStatement Y
syn keyword gensodStatement Z
syn keyword gensodStatement ZBOTM
syn keyword gensodStatement ZCYCL
syn keyword gensodStatement ZGRWT
syn keyword gensodStatement ZLEV
syn keyword gensodStatement ZONINF
syn keyword gensodStatement ZSURF

syn region gensodComment start="^\*" end="$"
syn region gensodComment start="\*\*\*\*" end="$"
syn region gensodComment start="^C" end="$"

highlight link gensodStatement Statement
highlight link gensodComment Comment

let b:current_syntax = "gensod"
