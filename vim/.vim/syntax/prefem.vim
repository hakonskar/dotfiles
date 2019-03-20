" Vim syntax file
" Language:	DnV SESAM input files (*jnl), PREFEM
" Maintainer:	Håkon Skår - haakonskaar@akersolutionscom
" Company:      Aker Kværner Offshore Partner AS Bergen
" Last Change:	06 mars 2007


" SESAM is case insensitive
syn case ignore

" The following main keywords taken from the Prefem user manual
syn keyword prefemStatement ABS
syn keyword prefemStatement ADD-DISPLAY
syn keyword prefemStatement ARC
syn keyword prefemStatement ARC 
syn keyword prefemStatement BAR
syn keyword prefemStatement BEAM-CONCENTRATED
syn keyword prefemStatement BODY
syn keyword prefemStatement BOUNDARY-CONDITION
syn keyword prefemStatement BOX 
syn keyword prefemStatement CHANGE
syn keyword prefemStatement CHANGE
syn keyword prefemStatement CHANGE
syn keyword prefemStatement CHANGE 
syn keyword prefemStatement CHANGE ELEMENT-ATTRIBUTE
syn keyword prefemStatement CHANNEL
syn keyword prefemStatement CHECK
syn keyword prefemStatement CLUSTERED-NODES 
syn keyword prefemStatement CLUSTERED-POINTS
syn keyword prefemStatement COLOUR 
syn keyword prefemStatement COLOUR-IDENTIFICATION
syn keyword prefemStatement COMMAND-INPUT-FILE 
syn keyword prefemStatement COMPONENT-PRESSURE
syn keyword prefemStatement CONCENTRATED
syn keyword prefemStatement CONNECT
syn keyword prefemStatement COORDINATE-SYSTEM 
syn keyword prefemStatement COPY
syn keyword prefemStatement COSIN
syn keyword prefemStatement CREATE
syn keyword prefemStatement CUT
syn keyword prefemStatement CYLINDRICAL-ANGLE-VARYING
syn keyword prefemStatement CYLINDRICAL-RADIUS-VARYING 
syn keyword prefemStatement DAMPER
syn keyword prefemStatement DEFAULT 
syn keyword prefemStatement DEFINE 
syn keyword prefemStatement DELETE 
syn keyword prefemStatement DESCRIPTION
syn keyword prefemStatement DISPLAY
syn keyword prefemStatement DOUBLE-BOTTOM 
syn keyword prefemStatement ECCENTRICITY-BEAM 
syn keyword prefemStatement ELEMENT-LENGTH-RATIO
syn keyword prefemStatement ELEMENT-SHAPE 
syn keyword prefemStatement ELEMENT-TYPE 
syn keyword prefemStatement EXIT 
syn keyword prefemStatement EXP
syn keyword prefemStatement EXTRUDE
syn keyword prefemStatement GENERAL 
syn keyword prefemStatement GENERAL-NODE-DEPENDENCY 
syn keyword prefemStatement GENERATE 
syn keyword prefemStatement GRAPHICS
syn keyword prefemStatement GRAVITY
syn keyword prefemStatement HELP 
syn keyword prefemStatement HINGE
syn keyword prefemStatement HYDRO-PRESSURE 
syn keyword prefemStatement I
syn keyword prefemStatement INITIAL-DISPLACEMENT
syn keyword prefemStatement INITIAL-VELOCITY
syn keyword prefemStatement INSIDE 
syn keyword prefemStatement INTERSECTION
syn keyword prefemStatement JOIN
syn keyword prefemStatement JOURNALLING
syn keyword prefemStatement L 
syn keyword prefemStatement LABEL
syn keyword prefemStatement LAYERED
syn keyword prefemStatement LINE 
syn keyword prefemStatement LINE-LINE-DEPENDENCY
syn keyword prefemStatement LINE-LOAD 
syn keyword prefemStatement LINE-MOMENT
syn keyword prefemStatement LINEAR-2POINTS-VARYING
syn keyword prefemStatement LINEAR-3POINTS-VARYING
syn keyword prefemStatement LINEAR-DEPENDENCY 
syn keyword prefemStatement LINEAR-RADIUS-VARYING
syn keyword prefemStatement LN 
syn keyword prefemStatement LOAD
syn keyword prefemStatement LOAD
syn keyword prefemStatement LOCAL-COORDINATE-BEAM 
syn keyword prefemStatement LOCAL-COORDINATE-SURFACE
syn keyword prefemStatement LOCATE
syn keyword prefemStatement MASS-ELEMENT 
syn keyword prefemStatement MATERIAL 
syn keyword prefemStatement MAX-ELEMENT-LENGTH
syn keyword prefemStatement MESH
syn keyword prefemStatement MESH
syn keyword prefemStatement MESH 
syn keyword prefemStatement MESH 
syn keyword prefemStatement MESH 
syn keyword prefemStatement MESH-CORNER 
syn keyword prefemStatement MESH-PARAMETERS
syn keyword prefemStatement MESH-TOPOLOGY
syn keyword prefemStatement NAME
syn keyword prefemStatement NAMING
syn keyword prefemStatement NODE
syn keyword prefemStatement NODE-LINE
syn keyword prefemStatement NODE-SYMBOL 
syn keyword prefemStatement NON-REGULAR-NODES 
syn keyword prefemStatement NORMAL-OF-SURFACE 
syn keyword prefemStatement NORMAL-PRESSURE 
syn keyword prefemStatement NOT-MESH-CORNER 
syn keyword prefemStatement NOT-MESH-CORNER 
syn keyword prefemStatement NUMBEROF-ELEMENTS
syn keyword prefemStatement NUMERICAL-VALUES
syn keyword prefemStatement ONLY-BETWEEN
syn keyword prefemStatement OUTSIDE 
syn keyword prefemStatement OUTSIDE 
syn keyword prefemStatement PARAMETER 
syn keyword prefemStatement PART-LINE 
syn keyword prefemStatement PIPE
syn keyword prefemStatement PLOT 
syn keyword prefemStatement PLOT 
syn keyword prefemStatement POINT
syn keyword prefemStatement POINT
syn keyword prefemStatement POINT 
syn keyword prefemStatement POINT-MASS 
syn keyword prefemStatement PREFIX-NAME
syn keyword prefemStatement PRESCRIBED-ACCELERATION
syn keyword prefemStatement PRESCRIBED-DISPLACEMENT
syn keyword prefemStatement PRESENTATION
syn keyword prefemStatement PRINT
syn keyword prefemStatement PRINT
syn keyword prefemStatement PRISM
syn keyword prefemStatement PROJECTION 
syn keyword prefemStatement PROPERTY
syn keyword prefemStatement PROPERTY
syn keyword prefemStatement RE-COMPUTE
syn keyword prefemStatement RE-DISPLAY 
syn keyword prefemStatement READ
syn keyword prefemStatement RIGID-BODY-ACCELERATION
syn keyword prefemStatement RIGID-BODY-DEPENDENCY
syn keyword prefemStatement RIGID-BODY-VELOCITY
syn keyword prefemStatement ROTATE
syn keyword prefemStatement ROTATION-OF-SURFACE 
syn keyword prefemStatement ROUNDED-CORNER 
syn keyword prefemStatement SECTION 
syn keyword prefemStatement SECTOR-CORNER 
syn keyword prefemStatement SET 
syn keyword prefemStatement SET 
syn keyword prefemStatement SHAPE
syn keyword prefemStatement SIN 
syn keyword prefemStatement SIZE-SYMBOLS
syn keyword prefemStatement SPLINE
syn keyword prefemStatement SPRING
syn keyword prefemStatement SURFACE 
syn keyword prefemStatement TASK
syn keyword prefemStatement TEMPERATURE
syn keyword prefemStatement THICKNESS
syn keyword prefemStatement TOLERANCE
syn keyword prefemStatement TRANSFORMATION
syn keyword prefemStatement TRANSFORMATION 
syn keyword prefemStatement TWO-NODE-DEPENDENCY
syn keyword prefemStatement TWO-POINT-DEPENDENCY
syn keyword prefemStatement UNSYMMETRICAL-I 
syn keyword prefemStatement VALUE-BETWEEN 
syn keyword prefemStatement WRITE
syn keyword prefemStatement WRITE-MODE
syn keyword prefemStatement ZOOM

syn region prefemComment start="%" end="$"
syn region prefemString start=+"+ end=+"+

syn match prefemOperator "[()+.,\-/*=&]"
syn match prefemOperator "[<>]=\="

highlight link prefemStatement Statement
highlight link prefemComment Comment
highlight link prefemString String
highlight link prefemOperator Operator

let b:current_syntax = "prefem"
