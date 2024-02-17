bimg_root = '../../bimg/'

bimg_inc = include_directories([
  bimg_root + 'include',
  bimg_root + '3rdparty',
  bimg_root + '3rdparty/astc-encoder',
  bimg_root + '3rdparty/astc-encoder/include',
  bimg_root + '3rdparty/tinyexr/deps/miniz',
])



bimg_lib = static_library('bimg', [
  bimg_root + '3rdparty/tinyexr/deps/miniz/miniz.c',
  bimg_root + 'src/image.cpp',
  bimg_root + 'src/image_gnf.cpp',
  bimg_root + 'src/image_decode.cpp'
],
include_directories: bimg_inc,
dependencies: [
  bx_dep
])

bimg_decode_lib = static_library('bimg_decode', [
  bimg_root + 'src/image_decode.cpp',
],
include_directories:  bimg_inc,
dependencies: bx_dep
)

bimg_encode_lib = static_library('bimg_encode', [
bimg_root + '3rdparty/tinyexr/deps/miniz/miniz.c',
bimg_root + '3rdparty/pvrtc/PvrTcEncoder.cpp',
bimg_root + '3rdparty/pvrtc/PvrTcPacket.cpp',
bimg_root + '3rdparty/pvrtc/MortonTable.cpp',
bimg_root + '3rdparty/pvrtc/PvrTcDecoder.cpp',
bimg_root + '3rdparty/pvrtc/BitScale.cpp',
bimg_root + '3rdparty/nvtt/nvtt.cpp',
bimg_root + '3rdparty/nvtt/nvmath/fitting.cpp',
bimg_root + '3rdparty/nvtt/bc7/avpcl_mode7.cpp',
bimg_root + '3rdparty/nvtt/bc7/avpcl_utils.cpp',
bimg_root + '3rdparty/nvtt/bc7/avpcl_mode3.cpp',
bimg_root + '3rdparty/nvtt/bc7/avpcl_mode4.cpp',
bimg_root + '3rdparty/nvtt/bc7/avpcl_mode5.cpp',
bimg_root + '3rdparty/nvtt/bc7/avpcl_mode6.cpp',
bimg_root + '3rdparty/nvtt/bc7/avpcl_mode0.cpp',
bimg_root + '3rdparty/nvtt/bc7/avpcl_mode1.cpp',
bimg_root + '3rdparty/nvtt/bc7/avpcl_mode2.cpp',
bimg_root + '3rdparty/nvtt/bc7/avpcl.cpp',
bimg_root + '3rdparty/nvtt/bc6h/zohone.cpp',
bimg_root + '3rdparty/nvtt/bc6h/zohtwo.cpp',
bimg_root + '3rdparty/nvtt/bc6h/zoh.cpp',
bimg_root + '3rdparty/nvtt/bc6h/zoh_utils.cpp',
bimg_root + '3rdparty/lodepng/lodepng.cpp',
bimg_root + '3rdparty/libsquish/singlecolourfit.cpp',
bimg_root + '3rdparty/libsquish/squish.cpp',
bimg_root + '3rdparty/libsquish/maths.cpp',
bimg_root + '3rdparty/libsquish/rangefit.cpp',
bimg_root + '3rdparty/libsquish/colourfit.cpp',
bimg_root + '3rdparty/libsquish/colourset.cpp',
bimg_root + '3rdparty/libsquish/clusterfit.cpp',
bimg_root + '3rdparty/libsquish/colourblock.cpp',
bimg_root + '3rdparty/libsquish/alpha.cpp',
bimg_root + '3rdparty/iqa/source/ssim.c',
bimg_root + '3rdparty/iqa/source/decimate.c',
bimg_root + '3rdparty/iqa/source/math_utils.c',
bimg_root + '3rdparty/iqa/source/ms_ssim.c',
bimg_root + '3rdparty/iqa/source/mse.c',
bimg_root + '3rdparty/iqa/source/psnr.c',
bimg_root + '3rdparty/iqa/source/convolve.c',
bimg_root + '3rdparty/etc2/ProcessRGB.cpp',
bimg_root + '3rdparty/etc2/Tables.cpp',
bimg_root + '3rdparty/etc1/etc1.cpp',
bimg_root + '3rdparty/edtaa3/edtaa3func.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_averages_and_directions.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_block_sizes.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_color_quantize.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_color_unquantize.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_compress_symbolic.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_compute_variance.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_decompress_symbolic.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_diagnostic_trace.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_diagnostic_trace.h',
bimg_root + '3rdparty/astc-encoder/source/astcenc_entry.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_find_best_partitioning.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_ideal_endpoints_and_weights.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_image.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_integer_sequence.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_internal_entry.h',
bimg_root + '3rdparty/astc-encoder/source/astcenc_internal.h',
bimg_root + '3rdparty/astc-encoder/source/astcenc_mathlib_softfloat.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_mathlib.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_mathlib.h',
bimg_root + '3rdparty/astc-encoder/source/astcenc_partition_tables.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_percentile_tables.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_pick_best_endpoint_format.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_quantization.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_symbolic_physical.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_vecmathlib_avx2_8.h',
bimg_root + '3rdparty/astc-encoder/source/astcenc_vecmathlib_common_4.h',
bimg_root + '3rdparty/astc-encoder/source/astcenc_vecmathlib_neon_4.h',
bimg_root + '3rdparty/astc-encoder/source/astcenc_vecmathlib_none_4.h',
bimg_root + '3rdparty/astc-encoder/source/astcenc_vecmathlib_sse_4.h',
bimg_root + '3rdparty/astc-encoder/source/astcenc_vecmathlib.h',
bimg_root + '3rdparty/astc-encoder/source/astcenc_weight_align.cpp',
bimg_root + '3rdparty/astc-encoder/source/astcenc_weight_quant_xfer_tables.cpp',
bimg_root + 'src/image_encode.cpp',
bimg_root + 'src/image_cubemap_filter.cpp',
],
include_directories: [
  bimg_root + 'include',
  bimg_root + '3rdparty',
  bimg_root + '3rdparty/astc-encoder/include',
  bimg_root + '3rdparty/nvtt',
  bimg_root + '3rdparty/iqa/include',
  bimg_root + '3rdparty/tinyexr/deps/miniz',
],
dependencies: bx_dep,
)

bimg_dep = declare_dependency(
  include_directories: bimg_inc,
  link_with: [
    bimg_lib,
    bimg_decode_lib
  ]
)

