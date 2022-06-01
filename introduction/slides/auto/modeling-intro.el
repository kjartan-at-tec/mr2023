(TeX-add-style-hook
 "modeling-intro"
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
    "zref"
    "atbegshi"
    "cancel"
    "fontawesome"
    "tikz"
    "pgfplots"
    "pgfplotstable"
    "amsmath"
    "ccicons")
   (TeX-add-symbols
    '("hummeranimation" 1)
    "sign"
    "velocity"
    "startbrake"
    "braketimeconst"))
 :latex)

