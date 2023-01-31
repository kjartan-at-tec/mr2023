(TeX-add-style-hook
 "two-masses-spring-damper-1"
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

