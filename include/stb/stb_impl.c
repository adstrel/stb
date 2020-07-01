#ifdef DISABLE_ASSERTS
	#define STBI_ASSERT(x)
#endif

#define STB_IMAGE_IMPLEMENTATION
#include "stb.h"
#include "stb_connected_components.h"
#include "stb_c_lexer.h"
#include "stb_divide.h"
#include "stb_ds.h"
#include "stb_dxt.h"
#include "stb_easy_font.h"
#include "stb_herringbone_wang_tile.h"
#include "stb_image.h"
#include "stb_image_resize.h"
#include "stb_image_write.h"
#include "stb_include.h"
#include "stb_leakcheck.h"
#include "stb_perlin.h"
#include "stb_rect_pack.h"
#include "stb_sprintf.h"
#include "stb_textedit.h"
#include "stb_tilemap_editor.h"
#include "stb_truetype.h"
#include "stb_vorbis.c"
#include "stb_voxel_render.h"
#include "stretchy_buffer.h"
