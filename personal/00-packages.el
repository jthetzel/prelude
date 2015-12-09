(require 'package)
(add-to-list 'package-archives
             '("melpa" .
               "http://melpa.org/packages/"))
(package-initialize)

;; My packages
(setq prelude-packages (append '(
                                 elpy
                                 ess
                                 julia-mode
                                 ac-octave
                                 pyvenv
                                 markdown-mode
                                 ;;web-mode
                                 ) prelude-packages))

;; Install my packages
(prelude-install-packages)
