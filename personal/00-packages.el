(require 'package)
(add-to-list 'package-archives
             '("melpa" .
               "http://melpa.org/packages/"))
(package-initialize)

;; My packages
(setq prelude-packages (append '(
                                 ivy
                                 swiper
                                 elpy
                                 jedi
                                 ess
                                 helm
                                 helm-projectile
                                 monky
                                 geiser
                                 paredit
                                 company
                                 julia-mode
                                 ac-octave
                                 pyvenv
                                 markdown-mode
                                 js2-mode
                                 tern
                                 ac-js2
                                 nodejs-repl
                                 web-mode
                                 magit-gitflow
                                 ;; swank-js
                                 arduino-mode
                                 docker
                                 exec-path-from-shell
                                 flx-ido
                                 es-mode
                                 js2-mode
                                 js2-refactor
                                 ac-js2
                                 skewer-mode
                                 json-mode
                                 editorconfig
                                 haskell-mode
                                 hi2
                                 flycheck
                                 flycheck-haskell
                                 shm
                                 hindent
                                 markdown-mode
                                 tide
                                 js-comint
                                 ) prelude-packages))

;; Install my packages
(prelude-install-packages)
