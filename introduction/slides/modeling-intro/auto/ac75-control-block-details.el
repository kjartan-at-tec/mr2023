(TeX-add-style-hook
 "ac75-control-block-details"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("circuitikz" "american" "siunitx")))
   (TeX-run-style-hooks
    "latex2e"
    "standalone"
    "standalone10"
    "inputenc"
    "fontenc"
    "graphicx"
    "amsmath"
    "circuitikz"))
 :latex)

