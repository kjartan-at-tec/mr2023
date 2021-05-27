(TeX-add-style-hook
 "block-two-feedback-loops"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1") ("inputenc" "utf8")))
   (TeX-run-style-hooks
    "latex2e"
    "standalone"
    "standalone10"
    "fontenc"
    "inputenc"
    "pgf"
    "tikz"
    "pgfplots")
   (LaTeX-add-environments
    '("exercise" LaTeX-env-args ["argument"] 0)))
 :latex)

