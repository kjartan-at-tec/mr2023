(TeX-add-style-hook
 "one-mass-two-springs"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "standalone"
    "standalone10"
    "graphicx"
    "tikz"
    "pgfplots"
    "pgfplotstable")
   (TeX-add-symbols
    '("dashpot" 2)
    "masswidth"
    "massheight"
    "springlen")
   (LaTeX-add-environments
    '("exercise" LaTeX-env-args ["argument"] 0)))
 :latex)

