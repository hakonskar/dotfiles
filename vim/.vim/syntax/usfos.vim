" Vim syntax file
" Language:		USFOS input files (*.fem)
" 			Simple syntax file to highlight comments and keywords
" Maintainer:		Håkon Skår - haakon.skaar@akersolutions.com
" Company:     		Aker Kværner Offshore Partner AS Bergen
" Last Change:		20 mars 2007
" (G)VIM version:	7.0


" USFOS commands are case-insensitive
syn case ignore

" The following main keywords are taken from the USFOS user manuals
syn keyword usfosStatement ACTIVELM
syn keyword usfosStatement ADDMBEAM
syn keyword usfosStatement ALUMTDEP
syn keyword usfosStatement API_SOIL
syn keyword usfosStatement ARC_OFF
syn keyword usfosStatement BANANA
syn keyword usfosStatement BEAM
syn keyword usfosStatement BEAMHING
syn keyword usfosStatement BEAMHINGE
syn keyword usfosStatement BEAMLOAD
syn keyword usfosStatement BEAMTYPE
syn keyword usfosStatement BELTEMP
syn keyword usfosStatement BIMPACT
syn keyword usfosStatement BOX
syn keyword usfosStatement BUOYANCY
syn keyword usfosStatement BUOYHIST
syn keyword usfosStatement CBIFURC
syn keyword usfosStatement CCOMB
syn keyword usfosStatement CDYNPAR
syn keyword usfosStatement CELHINX
syn keyword usfosStatement CFRACT
syn keyword usfosStatement CHANNEL
syn keyword usfosStatement CHG_BOUN
syn keyword usfosStatement CHG_MAT
syn keyword usfosStatement CHJOINT
syn keyword usfosStatement CICYFOS
syn keyword usfosStatement CINIDEF
syn keyword usfosStatement CITER
syn keyword usfosStatement CMAXSTEP
syn keyword usfosStatement CNODES
syn keyword usfosStatement CNOHINX
syn keyword usfosStatement COMBLOAD
syn keyword usfosStatement CONSIMAS
syn keyword usfosStatement COROLOAD
syn keyword usfosStatement CPRINT
syn keyword usfosStatement CPROPAR
syn keyword usfosStatement CSAVE
syn keyword usfosStatement CTFRACT
syn keyword usfosStatement CUNFAL
syn keyword usfosStatement CURRBLOC
syn keyword usfosStatement CURRENT
syn keyword usfosStatement CURRHIST
syn keyword usfosStatement CUSFOS
syn keyword usfosStatement DAMPRATIO
syn keyword usfosStatement DENT_OFF
syn keyword usfosStatement DENT_TYPE
syn keyword usfosStatement DETEROFF
syn keyword usfosStatement DYNAMIC
syn keyword usfosStatement DYNIMPCT
syn keyword usfosStatement DYNRES_E
syn keyword usfosStatement DYNRES_Elem
syn keyword usfosStatement DYNRES_G
syn keyword usfosStatement DYNRES_General
syn keyword usfosStatement DYNRES_N
syn keyword usfosStatement DYNRES_Node
syn keyword usfosStatement ECCENT
syn keyword usfosStatement EIGENVAL
syn keyword usfosStatement ELASTIC
syn keyword usfosStatement ELEMTEMP
syn keyword usfosStatement ELPLCURV
syn keyword usfosStatement ELPLCURV
syn keyword usfosStatement EXTPRES
syn keyword usfosStatement FLOODED
syn keyword usfosStatement GBOUND
syn keyword usfosStatement GELIMP
syn keyword usfosStatement GENBEAM
syn keyword usfosStatement GIMPER
syn keyword usfosStatement GRAVITY
syn keyword usfosStatement GROUPDEF
syn keyword usfosStatement GROUPNOD
syn keyword usfosStatement HEAD
syn keyword usfosStatement HYDRO_Cd
syn keyword usfosStatement HYDRO_Cm
syn keyword usfosStatement HYPELAST
syn keyword usfosStatement Hyd_CdCm
syn keyword usfosStatement ID
syn keyword usfosStatement IHPROFIL
syn keyword usfosStatement INI_TIME
syn keyword usfosStatement INI_VELO
syn keyword usfosStatement INTFLUID
syn keyword usfosStatement INVISIBLE
syn keyword usfosStatement JNTCLASS
syn keyword usfosStatement JNT_FORM
syn keyword usfosStatement JOINTGAP
syn keyword usfosStatement JSURFSIZ
syn keyword usfosStatement LCASETIM
syn keyword usfosStatement LIN_ELEM
syn keyword usfosStatement LITER
syn keyword usfosStatement LOADHIST
syn keyword usfosStatement LSECTION
syn keyword usfosStatement LUMPMASS
syn keyword usfosStatement MATERIAL
syn keyword usfosStatement MAXWAVE
syn keyword usfosStatement MEMBRANE
syn keyword usfosStatement MESHBOX
syn keyword usfosStatement MESHIPRO
syn keyword usfosStatement MESHPIPE
syn keyword usfosStatement MFRACT
syn keyword usfosStatement MISOIEP
syn keyword usfosStatement MPLASCYC
syn keyword usfosStatement MPLASMON
syn keyword usfosStatement MREF
syn keyword usfosStatement MSHIP
syn keyword usfosStatement MSL
syn keyword usfosStatement MSPUD
syn keyword usfosStatement MULT_IMP
syn keyword usfosStatement MUST
syn keyword usfosStatement M_GROWTH
syn keyword usfosStatement NIS
syn keyword usfosStatement NODE
syn keyword usfosStatement NODEACC
syn keyword usfosStatement NODEDISP
syn keyword usfosStatement NODELOAD
syn keyword usfosStatement NODEMASS
syn keyword usfosStatement NODEVELO
syn keyword usfosStatement NODTRANS
syn keyword usfosStatement NONHYDRO
syn keyword usfosStatement NONSTRU
syn keyword usfosStatement NOTE
syn keyword usfosStatement OVERLAP
syn keyword usfosStatement PCOR_OFF
syn keyword usfosStatement PCOR_ON
syn keyword usfosStatement PILE
syn keyword usfosStatement PILEGEO
syn keyword usfosStatement PILE_D-T
syn keyword usfosStatement PIPE
syn keyword usfosStatement PLASTHIN
syn keyword usfosStatement PLTHICK
syn keyword usfosStatement PRESSURE
syn keyword usfosStatement QUADSHEL
syn keyword usfosStatement RAYLDAMP
syn keyword usfosStatement RECTBAR
syn keyword usfosStatement REFINE
syn keyword usfosStatement REL_VELO
syn keyword usfosStatement SHELL
syn keyword usfosStatement SHELLOAD
syn keyword usfosStatement SOILCHAR
syn keyword usfosStatement SOILDIAM
syn keyword usfosStatement SOLID8
syn keyword usfosStatement SPOOLWAY
syn keyword usfosStatement SPRIDAMP
syn keyword usfosStatement SPRIDIAG
syn keyword usfosStatement SPRIFULL
syn keyword usfosStatement SPRI_MOD
syn keyword usfosStatement SPRNG2GR
syn keyword usfosStatement SPUDMAT
syn keyword usfosStatement SSH_LOAD
syn keyword usfosStatement STATIC
syn keyword usfosStatement STEELTDEP
syn keyword usfosStatement STRUCTEL
syn keyword usfosStatement SUBSHELL
syn keyword usfosStatement SUBSTRU
syn keyword usfosStatement SUPERELM
syn keyword usfosStatement SURFLEV
syn keyword usfosStatement TDEPFUNC
syn keyword usfosStatement TFRACT
syn keyword usfosStatement TIMEHIST
syn keyword usfosStatement TRISHELL
syn keyword usfosStatement UNITVEC
syn keyword usfosStatement USERFRAC
syn keyword usfosStatement USERTDEP
syn keyword usfosStatement USFOS
syn keyword usfosStatement USYMMI
syn keyword usfosStatement WAVCASE1
syn keyword usfosStatement WAVEDATA
syn keyword usfosStatement WAVE_INT
syn keyword usfosStatement WAVMXSCL
syn keyword usfosStatement WET_ELEM
syn keyword usfosStatement WINDFIELD
syn keyword usfosStatement WINDPAR
syn keyword usfosStatement Wave_KRF
syn keyword usfosStatement XACT
syn keyword usfosStatement XFOSFULL
syn keyword usfosStatement YFSW


syn region usfosComment start="'" end="$"
syn region usfosComment start="#" end="$"
syn region usfosComment start="%" end="$"
syn region usfosComment start="!" end="$"
syn region usfosString start=+"+ end=+"+

" syn match usfosOperator "[()+.,\-/*=&]"
syn match usfosOperator "[(),\/*=&]"
syn match usfosOperator "[<>]=\="

highlight link usfosStatement Statement
highlight link usfosComment Comment
highlight link usfosString String
highlight link usfosOperator Operator

let b:current_syntax = "usfos"
