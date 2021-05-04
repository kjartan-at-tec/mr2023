(TeX-add-style-hook
 "quarter-model"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "dvisvgm" "hypertex" "aspectratio=169")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("animate" "final") ("zref" "totpages")))
   (TeX-run-style-hooks
    "latex2e"
    "beamer"
    "beamer10"
    "animate"
    "ifthen"
    "pythontex"
    "graphicx"
    "tikz"
    "pgfplots"
    "pgfplotstable"
    "amsmath"
    "zref"
    "atbegshi"
    "fontawesome"
    "ccicons")
   (TeX-add-symbols
    '("dashpot" 2)
    "wheeldiam"
    "susplen"
    "massheight"
    "springelementsone"
    "springelementstwo"))
 :latex)

