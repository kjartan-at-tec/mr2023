(TeX-add-style-hook
 "pendulum"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "dvisvgm" "hypertex" "aspectratio=169")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("animate" "final")))
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
    "ccicons"))
 :latex)

