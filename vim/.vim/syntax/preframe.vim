" Vim syntax file
" Language:	DnV SESAM input files (*.jnl), PREFRAME
" Maintainer:	H�kon Sk�r - haakon.skaar@akersolutions.com
" Company:      Aker Kv�rner Offshore Partner AS Bergen
" Last Change:	08.01.2007


" SESAM is case insensitive
syn case ignore

" The following main keywords taken from the Preframe user manual
syn keyword preframeStatement ADD-DISPLAY
syn keyword preframeStatement ALIGN
syn keyword preframeStatement ALIGNMENT-AUTOMATIC
syn keyword preframeStatement ASSIGN
syn keyword preframeStatement ASSIGN-OPTION
syn keyword preframeStatement AUTO
syn keyword preframeStatement AXIAL-DAMPER
syn keyword preframeStatement AXIAL-SPRING
syn keyword preframeStatement AXIALDAMPER
syn keyword preframeStatement BAR
syn keyword preframeStatement BEAM
syn keyword preframeStatement BY
syn keyword preframeStatement BOUNDARY
syn keyword preframeStatement BOUNDARY-CONDITIONS
syn keyword preframeStatement BOX
syn keyword preframeStatement CAN
syn keyword preframeStatement CAN-STUB-LENGTH-PARAMETER
syn keyword preframeStatement CHANGE
syn keyword preframeStatement CHANNEL
syn keyword preframeStatement CHARACTER-TYPE
syn keyword preframeStatement COLOUR
syn keyword preframeStatement COMMAND-INPUT-FILE
syn keyword preframeStatement CONCEPT-ATTRIBUTES
syn keyword preframeStatement CONE
syn keyword preframeStatement CONNECT
syn keyword preframeStatement CONSTANT-TEMPERATURE-ACROSS-THICKNESS
syn keyword preframeStatement COORDINATES
syn keyword preframeStatement COPY
syn keyword preframeStatement CREATE
syn keyword preframeStatement DAMPER-TO-GROUND
syn keyword preframeStatement DATA-CHECK
syn keyword preframeStatement DEFAULT
syn keyword preframeStatement DEFINE
syn keyword preframeStatement DELETE
syn keyword preframeStatement DESTINATION
syn keyword preframeStatement DEVICE
syn keyword preframeStatement DISPLACEMENT
syn keyword preframeStatement DISPLAY
syn keyword preframeStatement DISTRIBUTED
syn keyword preframeStatement DOUBLE-BOTTOM
syn keyword preframeStatement ECCENTRICITY
syn keyword preframeStatement ELEMENT
syn keyword preframeStatement ELEMENT-LOAD-DISTANCE-MODE
syn keyword preframeStatement ELEMENT-WISE
syn keyword preframeStatement END
syn keyword preframeStatement EXIT
syn keyword preframeStatement EXTRAPOLATION
syn keyword preframeStatement EYE-DIRECTION
syn keyword preframeStatement FILE
syn keyword preframeStatement FORCE
syn keyword preframeStatement FORMAT
syn keyword preframeStatement GAP
syn keyword preframeStatement GENERAL
syn keyword preframeStatement GENERAL-NODE-DEPENDENCY
syn keyword preframeStatement GENERAL-SPRING
syn keyword preframeStatement GENERATE
syn keyword preframeStatement GENSOD-DATA
syn keyword preframeStatement GENSOD-SPLICE-TEMPLATE
syn keyword preframeStatement GRAPHICS
syn keyword preframeStatement GRAVITY
syn keyword preframeStatement GROUP
syn keyword preframeStatement HELP
syn keyword preframeStatement HIDDEN
syn keyword preframeStatement HINGE
syn keyword preframeStatement HYDRODYNAMIC
syn keyword preframeStatement I
syn keyword preframeStatement INITIAL-CONDITION
syn keyword preframeStatement INPUT
syn keyword preframeStatement INTERSECTION
syn keyword preframeStatement JACKET
syn keyword preframeStatement JOINT
syn keyword preframeStatement JOURNALLING
syn keyword preframeStatement K-BRACING
syn keyword preframeStatement LABEL
syn keyword preframeStatement LINE
syn keyword preframeStatement LINE-LOAD
syn keyword preframeStatement LINEAR-DEPENDENCY
syn keyword preframeStatement LINEAR-ELASTIC
syn keyword preframeStatement LOAD
syn keyword preframeStatement LOCAL-COORDINATE
syn keyword preframeStatement MASS-OF-ELEMENTS
syn keyword preframeStatement MASS-ON-NODE
syn keyword preframeStatement MATERIAL
syn keyword preframeStatement MEMBER
syn keyword preframeStatement MEMBER-FROM-ELEMENT
syn keyword preframeStatement MODEL-FILE
syn keyword preframeStatement NODE
syn keyword preframeStatement NODE-WISE
syn keyword preframeStatement NONSTRUCTURAL-BEAM
syn keyword preframeStatement NUMBERING-AUTOMATIC
syn keyword preframeStatement OVERVIEW
syn keyword preframeStatement PAGESIZE
syn keyword preframeStatement PILE
syn keyword preframeStatement PILE-CONCEPT
syn keyword preframeStatement PILE-DATA
syn keyword preframeStatement PILE-FROM-SOIL
syn keyword preframeStatement PIPE
syn keyword preframeStatement PLOT
syn keyword preframeStatement PLOT-FILE
syn keyword preframeStatement POINT
syn keyword preframeStatement PRESCRIBED-ACCELERATION
syn keyword preframeStatement PRESENTATION
syn keyword preframeStatement PRINT
syn keyword preframeStatement PROPERTY
syn keyword preframeStatement RE-DISPLAY
syn keyword preframeStatement READ
syn keyword preframeStatement RELATIVE
syn keyword preframeStatement RENUMBER
syn keyword preframeStatement ROTATE
syn keyword preframeStatement ROTATION-OF-STRUCTURE
syn keyword preframeStatement SECTION
syn keyword preframeStatement SEGMENT
syn keyword preframeStatement SET
syn keyword preframeStatement SHIM-ELEMENT
syn keyword preframeStatement SHIM-MEMBER
syn keyword preframeStatement SHRINK-FACTOR
syn keyword preframeStatement SIZE-SYMBOLS
syn keyword preframeStatement SOIL
syn keyword preframeStatement SOIL-DATA
syn keyword preframeStatement SOIL-PROFILE-X-Y
syn keyword preframeStatement SPLIT
syn keyword preframeStatement SPRING-TO-GROUND
syn keyword preframeStatement STABILITY
syn keyword preframeStatement STATUS
syn keyword preframeStatement STRUCTURE-CONCEPT
syn keyword preframeStatement STUB
syn keyword preframeStatement SUM
syn keyword preframeStatement T-BRACING
syn keyword preframeStatement TABLE NODE-BOUNDARY-TABLE
syn keyword preframeStatement TO-MASSES
syn keyword preframeStatement TRANSFORMATION
syn keyword preframeStatement TRANSLATE
syn keyword preframeStatement TRUSS
syn keyword preframeStatement TWO-NODE-DEPENDENCY
syn keyword preframeStatement UNIT-VECTOR-TOLERANCE
syn keyword preframeStatement UNSYM-I
syn keyword preframeStatement WRITE
syn keyword preframeStatement WRITE-MODE
syn keyword preframeStatement X-BRACING
syn keyword preframeStatement ZOOM
syn keyword preframeStatement #

syn region preframeComment start="%" end="$"
syn region preframeString start=+"+ end=+"+

syn match preframeOperator "[()+.,\-/*=&]"
syn match preframeOperator "[<>]=\="

highlight link preframeStatement Statement
highlight link preframeComment Comment
highlight link preframeString String
highlight link preframeOperator Operator

let b:current_syntax = "preframe"
