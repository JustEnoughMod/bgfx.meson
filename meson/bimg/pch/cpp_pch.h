#include <bimg/bimg.h>
#include <bimg/encode.h>

#include <bx/allocator.h>
#include <bx/bx.h>
#include <bx/debug.h>
#include <bx/endian.h>
#include <bx/error.h>
#include <bx/hash.h>
#include <bx/pixelformat.h>
#include <bx/readerwriter.h>
#include <bx/rng.h>
#include <bx/simd_t.h>

#include <stdint.h> 
#include <stdlib.h> 

#include <astcenc.h>
#include <edtaa3/edtaa3func.h>
#include <etc1/etc1.h>
#include <etc2/ProcessRGB.hpp>
#include <libsquish/squish.h>
#include <nvtt/nvtt.h>
#include <pvrtc/PvrTcEncoder.h>
#include <stb/stb_image.h>
#include <stb/stb_image_resize.h>
#include <tinyexr/tinyexr.h>