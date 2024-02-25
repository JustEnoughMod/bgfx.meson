bgfx_root = '../../bgfx/'
bgfx_inc = include_directories([
  bgfx_root + 'include',
  bgfx_root + '3rdparty',
  bgfx_root + '3rdparty/directx-headers/include',
  bgfx_root + '3rdparty/directx-headers/include/directx',
  bgfx_root + '3rdparty/directx-headers/include/wsl/stubs',
  bgfx_root + '3rdparty/khronos',

])

bgfx_lib = static_library('bgfx', [
  bgfx_root + 'src/bgfx.cpp',
  bgfx_root + 'src/debug_renderdoc.cpp',
  bgfx_root + 'src/dxgi.cpp',
  bgfx_root + 'src/glcontext_egl.cpp',
  bgfx_root + 'src/glcontext_html5.cpp',
  bgfx_root + 'src/glcontext_wgl.cpp',
  bgfx_root + 'src/nvapi.cpp',
  bgfx_root + 'src/renderer_agc.cpp',
  bgfx_root + 'src/renderer_d3d11.cpp',
  bgfx_root + 'src/renderer_d3d12.cpp',
  bgfx_root + 'src/renderer_gl.cpp',
  bgfx_root + 'src/renderer_gnm.cpp',
  bgfx_root + 'src/renderer_noop.cpp',
  bgfx_root + 'src/renderer_nvn.cpp',
  bgfx_root + 'src/renderer_vk.cpp',
  bgfx_root + 'src/shader_dxbc.cpp',
  bgfx_root + 'src/shader_spirv.cpp',
  bgfx_root + 'src/shader.cpp',
  bgfx_root + 'src/topology.cpp',
  bgfx_root + 'src/vertexlayout.cpp',
],
include_directories: bgfx_inc,
dependencies: [
  bx_dep,
  bimg_dep,
  dependency('gl')
],
cpp_pch : 'pch.hpp'
)

dear_imgui_lib = static_library('imgui',[
bgfx_root + '3rdparty/dear-imgui/imgui_demo.cpp',
bgfx_root + '3rdparty/dear-imgui/imgui_draw.cpp',
bgfx_root + '3rdparty/dear-imgui/imgui_tables.cpp',
bgfx_root + '3rdparty/dear-imgui/imgui_widgets.cpp',
bgfx_root + '3rdparty/dear-imgui/imgui.cpp'
],
include_directories: bgfx_inc,
dependencies: [
  bx_dep,
  bimg_dep
],
cpp_pch : 'pch.hpp')

meshoptimizer_lib = static_library('meshoptimizer', [
bgfx_root + '3rdparty/meshoptimizer/src/allocator.cpp',
bgfx_root + '3rdparty/meshoptimizer/src/clusterizer.cpp',
bgfx_root + '3rdparty/meshoptimizer/src/indexcodec.cpp',
bgfx_root + '3rdparty/meshoptimizer/src/indexgenerator.cpp',
bgfx_root + '3rdparty/meshoptimizer/src/overdrawanalyzer.cpp',
bgfx_root + '3rdparty/meshoptimizer/src/overdrawoptimizer.cpp',
bgfx_root + '3rdparty/meshoptimizer/src/simplifier.cpp',
bgfx_root + '3rdparty/meshoptimizer/src/spatialorder.cpp',
bgfx_root + '3rdparty/meshoptimizer/src/stripifier.cpp',
bgfx_root + '3rdparty/meshoptimizer/src/vcacheanalyzer.cpp',
bgfx_root + '3rdparty/meshoptimizer/src/vcacheoptimizer.cpp',
bgfx_root + '3rdparty/meshoptimizer/src/vertexcodec.cpp',
bgfx_root + '3rdparty/meshoptimizer/src/vertexfilter.cpp',
bgfx_root + '3rdparty/meshoptimizer/src/vfetchanalyzer.cpp',
bgfx_root + '3rdparty/meshoptimizer/src/vfetchoptimizer.cpp',
])

bgfx_dep = declare_dependency(
  link_with: [
    bgfx_lib,
    dear_imgui_lib,
    meshoptimizer_lib
  ],
  include_directories: bgfx_inc
)
