project('bgfx', 'cpp', 'c', 
    default_options : ['warning_level=0',
                       'cpp_std=c++17',
                       'buildtype=release',
                       'optimization=3'
    ])

add_project_arguments('-D__USE_LARGEFILE64', language: 'cpp')

subdir('meson/bx')
subdir('meson/bimg')
subdir('meson/bgfx')