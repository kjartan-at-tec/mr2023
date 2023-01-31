(TeX-add-style-hook
 "mr2023-winter23-exam"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("scrartcl" "letterpaper" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "latin1") ("geometry" "margin=24mm") ("SIunits" "amssymb")))
   (TeX-run-style-hooks
    "latex2e"
    "scrartcl"
    "scrartcl12"
    "epsfig"
    "latexsym"
    "amsmath"
    "amssymb"
    "epic"
    "eepic"
    "psfrag"
    "subfigure"
    "float"
    "euscript"
    "array"
    "inputenc"
    "geometry"
    "tikz"
    "pgf"
    "pgfplots"
    "SIunits")
   (TeX-add-symbols
    '("AxisRotator" ["argument"] 0)
    '("circled" 1)
    '("rom" 1)
    '("mexp" 1)
    '("point" 1)
    "abc"
    "bbm"
    "ebm"
    "ctrb"
    "Lap"
    "obsv"
    "realdel"
    "imagdel"
    "bC"
    "bR"
    "bmpv"
    "bmps"
    "bmpm"
    "bmpl"
    "emp")
   (LaTeX-add-labels
    "eq:odeyaw")
   (LaTeX-add-environments
    '("exercise" LaTeX-env-args ["argument"] 0))
   (LaTeX-add-counters
    "exerctr"
    "abcctr"))
 :latex)

