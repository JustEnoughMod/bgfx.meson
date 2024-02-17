bx_root = '../../bx/'
bx_inc = include_directories([
  bx_root + 'include',
  bx_root + 'include/compat/linux', 
  #'include/tinystl',
  bx_root + '3rdparty/',
])

msvc_compiler = meson.get_compiler('cpp')


if(get_option('buildtype') == 'debug')
  bx_cpp_args = '-DBX_CONFIG_DEBUG=1'#add_project_arguments('-DBX_CONFIG_DEBUG=1', language: 'cpp')
else
  bx_cpp_args = '-DBX_CONFIG_DEBUG=0'#add_project_arguments('-DBX_CONFIG_DEBUG=0', language: 'cpp')
endif

bx_lib = static_library('bx', [
  bx_root + 'src/allocator.cpp',
  bx_root + 'src/bounds.cpp',
  bx_root + 'src/bx.cpp',
  bx_root + 'src/commandline.cpp',
  bx_root + 'src/crtnone.cpp',
  bx_root + 'src/debug.cpp',
  bx_root + 'src/dtoa.cpp',
  bx_root + 'src/easing.cpp',
  bx_root + 'src/file.cpp',
  bx_root + 'src/filepath.cpp',
  bx_root + 'src/hash.cpp',
  bx_root + 'src/math.cpp',
  bx_root + 'src/mutex.cpp',
  bx_root + 'src/os.cpp',
  bx_root + 'src/process.cpp',
  bx_root + 'src/semaphore.cpp',
  bx_root + 'src/settings.cpp',
  bx_root + 'src/sort.cpp',
  bx_root + 'src/string.cpp',
  bx_root + 'src/thread.cpp',
  bx_root + 'src/timer.cpp',
  bx_root + 'src/url.cpp',
],
include_directories: bx_inc,
cpp_args: bx_cpp_args
)

bx_dep = declare_dependency(
  include_directories: bx_inc,
  link_with: bx_lib,
  compile_args: bx_cpp_args,
)