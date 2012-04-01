// This file is released under the 3-clause BSD license. See COPYING-BSD.

function builder_gw_c()

  includes_src_c = ilib_include_flag(get_absolute_file_path("builder_gateway_c.sce") + "../../src/c");

  tbx_build_gateway("xcos_aerospace_tbx_c",                        ..
                    ["tbx_reynoldsnumber", "sci_tbx_reynoldsnumber"],                       ..
                    ["sci_tbx_reynoldsnumber.c"],                                ..
                    get_absolute_file_path("builder_gateway_c.sce"),  ..
                    ["../../src/c/libxcos_aerospace_tbx"],                 ..
                    "",                                               ..
                    includes_src_c);

endfunction

builder_gw_c();
clear builder_gw_c; // remove builder_gw_c on stack
