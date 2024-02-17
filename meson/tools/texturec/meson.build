texturec_root = '../../../bimg/tools/texturec/'

texturec_exe = executable('texturec', [
  texturec_root + 'texturec.cpp',
  ],
  link_with: [
    bimg_encode_lib
  ],
  dependencies: [
    bx_dep,
    bimg_dep
  ]
)