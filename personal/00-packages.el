(require 'package)
(add-to-list 'package-archives
             '("melpa" .
               "http://melpa.org/packages/"))
;; (package-initialize)

;; My packages
(setq prelude-packages (append '(
                                 use-package
                                 ivy
                                 swiper
                                 counsel
                                 counsel-projectile
                                 lsp-mode
                                 lsp-ui
                                 company-lsp
                                 lsp-treemacs
                                 helm-lsp
                                 dap-mode
                                 elpy
                                 pipenv
                                 jedi
                                 ess
                                 helm
                                 helm-projectile
                                 monky
                                 geiser
                                 paredit
                                 company
                                 company-flow
                                 julia-mode
                                 ac-octave
                                 pyvenv
                                 markdown-mode
                                 merlin
                                 reason-mode
                                 rjsx-mode
                                 js2-mode
                                 flow-js2-mode
                                 tern
                                 ac-js2
                                 nodejs-repl
                                 web-mode
                                  magit-gh-pulls
                                 magit-gitflow
                                  magithub
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
                                 flycheck-flow
                                 company-flow
                                 shm
                                 hindent
                                 markdown-mode
                                 tide
                                 js-comint
                                 solidity-mode
                                 flymake-solidity
                                 graphql-mode
                                 ensime
                                 protobuf-mode
                                 ) prelude-packages))

;; Install my packages
(prelude-install-packages)
