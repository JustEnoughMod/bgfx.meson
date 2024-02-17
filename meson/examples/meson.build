examples_root = '../../bgfx/examples/'

examples_common_inc = include_directories([
  examples_root + 'common',
  examples_root + 'common/debugdraw',
  examples_root + 'common/entry',
  examples_root + 'common/font',
  examples_root + 'common/imgui',
  examples_root + 'common/nanovg',
  examples_root + 'common/ps',
])
example_common_args = []
if get_option('use_entry')
example_common_args += '-DUSE_ENTRY=1'
endif

example_common_lib = static_library('example-common', [
  examples_root + 'common/debugdraw/debugdraw.cpp',
  examples_root + 'common/entry/cmd.cpp',
  examples_root + 'common/entry/dialog.cpp',
  examples_root + 'common/entry/entry_android.cpp',
  examples_root + 'common/entry/entry_glfw.cpp',
  examples_root + 'common/entry/entry_html5.cpp',
  examples_root + 'common/entry/entry_noop.cpp',
  examples_root + 'common/entry/entry_sdl.cpp',
  examples_root + 'common/entry/entry_windows.cpp',
  examples_root + 'common/entry/entry_x11.cpp',
  examples_root + 'common/entry/entry.cpp',
  examples_root + 'common/entry/input.cpp',
  examples_root + 'common/font/font_manager.cpp',
  examples_root + 'common/font/text_buffer_manager.cpp',
  examples_root + 'common/font/text_metrics.cpp',
  examples_root + 'common/font/utf8.cpp',
  examples_root + 'common/imgui/imgui.cpp',
  examples_root + 'common/nanovg/nanovg_bgfx.cpp',
  examples_root + 'common/nanovg/nanovg.cpp',
  examples_root + 'common/ps/particle_system.cpp',
  examples_root + 'common/bgfx_utils.cpp',
  examples_root + 'common/camera.cpp',
  examples_root + 'common/cube_atlas.cpp',
],
include_directories: examples_common_inc,
cpp_args: example_common_args,
dependencies: [
  bx_dep,
  bimg_dep,
  bgfx_dep
])

examples_common_dep = declare_dependency(
  include_directories: examples_common_inc,
  link_with: example_common_lib
)

example_glue_lib = static_library('example-glue', [
    examples_root + 'common/example-glue.cpp'
],
dependencies: [
  bx_dep,
  bgfx_dep
])

example_glue_dep = declare_dependency(
  link_with: example_glue_lib
)

examples_exe = executable('examples', [
examples_root + '46-fsr/fsr.cpp',
examples_root + '46-fsr/app.cpp',
examples_root + '45-bokeh/bokeh.cpp',
examples_root + '44-sss/screen_space_shadows.cpp',
examples_root + '43-denoise/denoise.cpp',
examples_root + '42-bunnylod/bunnylod.cpp',
examples_root + '42-bunnylod/progmesh.c',
examples_root + '41-tess/tess.cpp',
examples_root + '40-svt/vt.cpp',
examples_root + '40-svt/svt.cpp',
examples_root + '39-assao/assao.cpp',
examples_root + '38-bloom/bloom.cpp',
examples_root + '37-gpudrivenrendering/gpudrivenrendering.cpp',
examples_root + '36-sky/sky.cpp',
examples_root + '35-dynamic/dynamic.cpp',
examples_root + '34-mvs/mvs.cpp',
examples_root + '33-pom/pom.cpp',
examples_root + '32-particles/particles.cpp',
examples_root + '31-rsm/reflectiveshadowmap.cpp',
examples_root + '30-picking/picking.cpp',
examples_root + '29-debugdraw/debugdraw.cpp',
examples_root + '28-wireframe/wireframe.cpp',
examples_root + '27-terrain/terrain.cpp',
examples_root + '26-occlusion/occlusion.cpp',
examples_root + '25-c99/helloworld.c',
examples_root + '24-nbody/nbody.cpp',
examples_root + '23-vectordisplay/vectordisplay.cpp',
examples_root + '23-vectordisplay/main.cpp',
examples_root + '22-windows/windows.cpp',
examples_root + '21-deferred/deferred.cpp',
examples_root + '20-nanovg/nanovg.cpp',
examples_root + '19-oit/oit.cpp',
examples_root + '18-ibl/ibl.cpp',
examples_root + '16-shadowmaps/shadowmaps.cpp',
examples_root + '15-shadowmaps-simple/shadowmaps_simple.cpp',
examples_root + '14-shadowvolumes/shadowvolumes.cpp',
examples_root + '13-stencil/stencil.cpp',
examples_root + '12-lod/lod.cpp',
examples_root + '11-fontsdf/fontsdf.cpp',
examples_root + '10-font/font.cpp',
examples_root + '09-hdr/hdr.cpp',
examples_root + '08-update/update.cpp',
examples_root + '07-callback/callback.cpp',
examples_root + '06-bump/bump.cpp',
examples_root + '05-instancing/instancing.cpp',
examples_root + '04-mesh/mesh.cpp',
examples_root + '03-raymarch/raymarch.cpp',
examples_root + '02-metaballs/metaballs.cpp',
examples_root + '01-cubes/cubes.cpp',
examples_root + '00-helloworld/helloworld.cpp'
],
dependencies: [
  bx_dep,
  bimg_dep,
  bgfx_dep,
  example_glue_dep,
  examples_common_dep
],
link_args: [
  #'/entry:mainCRTStartup'
  
]
)