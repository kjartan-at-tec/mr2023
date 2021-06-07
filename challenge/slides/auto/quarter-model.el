(TeX-add-style-hook
 "quarter-model"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "dvisvgm" "hypertex" "aspectratio=169")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("animate" "final") ("zref" "totpages")))
   (add-to-list 'LaTeX-verbatim-environments-local "pygments")
   (add-to-list 'LaTeX-verbatim-environments-local "pythontexcustomcode")
   (add-to-list 'LaTeX-verbatim-environments-local "VerbatimOut")
   (add-to-list 'LaTeX-verbatim-environments-local "SaveVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "LVerbatim*")
   (add-to-list 'LaTeX-verbatim-environments-local "LVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "BVerbatim*")
   (add-to-list 'LaTeX-verbatim-environments-local "BVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "Verbatim*")
   (add-to-list 'LaTeX-verbatim-environments-local "Verbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "sympyconv")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "sympyconc")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "sympycon")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "sympyb")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "sympyv")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "sympys")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "sympyc")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "sympy")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "pylabconv")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "pylabconc")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "pylabcon")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "pylabb")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "pylabv")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "pylabs")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "pylabc")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "pylab")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "pyconv")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "pyconc")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "pycon")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "pyb")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "pyv")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "pys")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "pyc")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "py")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "EscVerb")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "EscVerb*")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "sympyconv")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "sympyconc")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "sympycon")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "sympyb")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "sympyv")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "sympys")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "sympyc")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "sympy")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "pylabconv")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "pylabconc")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "pylabcon")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "pylabb")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "pylabv")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "pylabs")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "pylabc")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "pylab")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "pyconv")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "pyconc")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "pycon")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "pyb")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "pyv")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "pys")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "pyc")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "py")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "Verb*")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "Verb")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
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

