function! PythonInfo()
python << EOF

import sys, coloroid
print(sys.version)

EOF
endfunction

"function! Coloroid()
"python << EOF

"def atv_to_rgb(a, t, v):
    "def atv_to_xyY:
        "pass

    "def xyY_to_XYZ:
        "pass

    "def XYZ_to_sRGB:
        "pass

    "def sRGB_to_hex_str:
        "pass

"EOF
"endfunction
