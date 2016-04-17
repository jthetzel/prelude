(require 'package)
(add-to-list 'package-archives
             '("melpa" .
               "http://melpa.org/packages/"))
(package-initialize)

;; My packages
(setq prelude-packages (append '(
                                 elpy
                                 jedi
                                 ess
                                 helm
                                 monky
                                 geiser
                                 paredit
                                 company
                                 julia-mode
                                 ac-octave
                                 pyvenv
                                 markdown-mode
                                 js2-mode
                                 web-mode
                                 arduino-mode
                                 docker
                                 ) prelude-packages))

;; Install my packages
(prelude-install-packages)
