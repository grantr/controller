###| CMake Kiibohd Controller Scan Module |###
#
# Written by Jacob Alexander in 2011 for the Kiibohd Controller
#
# Released into the Public Domain
#
# For the Sony NEWS Topre Keyboard
#
###


###
# Module C files
#

set( SCAN_SRCS
	scan_loop.c
)


###
# Module H files
#
set( SCAN_HDRS
	scan_loop.h
)


###
# File Dependency Setup
#
ADD_FILE_DEPENDENCIES( scan_loop.c ${SCAN_HDRS} )
#add_file_dependencies( scan_loop.c ${SCAN_HDRS} )
#add_file_dependencies( macro.c keymap.h epsonqx10.h )


###
# Module Specific Options
#
add_definitions( -I${HEAD_DIR}/Keymap )

#| Keymap Settings
add_definitions(
	-DMODIFIER_MASK=epsonqx10_ModifierMask
	-DKEYINDEX_MASK=epsonqx10_ColemakMap
	#-DKEYINDEX_MASK=epsonqx10_DefaultMap
)

