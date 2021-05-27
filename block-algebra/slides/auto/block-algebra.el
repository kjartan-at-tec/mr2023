(TeX-add-style-hook
 "block-algebra"
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
    "khpreamble"
    "zref"
    "atbegshi"
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
    "braketimeconst")
   (LaTeX-add-labels
    "eq:one"
    "eq:two")
   (LaTeX-add-environments
    '("exercise" LaTeX-env-args ["argument"] 0)))
 :latex)

