;; Set tabs to four spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; Initialize packages
(package-initialize)

;; disable scrollbars
(scroll-bar-mode -1)

;; Global key binding
; (global-set-key "\M-*" 'pop-tag-mark)

;; Company-mode
(add-hook 'after-init-hook 'global-company-mode)

;; linum-mode
(global-linum-mode 1)

;; emacs speaks statistics
(require 'ess-site)
(ess-toggle-underscore nil)
(setq ess-fancy-comments nil)
(setq ess-tab-complete-in-script t)

;; python-mode
(elpy-enable)
(defalias 'workon 'pyvenv-workon)
(defalias 'activate 'pyvenv-activate)
; adjust tab width to two spaces
(defun python-custom-settings ()
  (setq tab-width 4)
  (setq python-indent-offset 4)
  (setq py-indent-offset 4))
(add-hook 'python-mode-hook 'python-custom-settings)


;; org-mode
;(setq org-startup-truncated)

;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (python . t)
   ;;(stan . t)
   ;;(julia . t)
   (emacs-lisp . t)
   (C . t)
   ;;(cpp . t)
   (awk . t)
   ;;(F90 . t)
   ;;(java . t)
   ;;(js . t)
   (makefile . t)
   ;;(sed . t)
   ;;(shell . t)
   ;;(sql . t)
   ;;(sqlite . t)
   (octave . t)
   ))

;; function to clear shell
(defun clear-shell ()
  (interactive)
  (let ((old-max comint-buffer-maximum-size))
    (setq comint-buffer-maximum-size 0)
    (comint-truncate-buffer)
    (setq comint-buffer-maximum-size old-max)))

;; octave-mode
(add-to-list 'auto-mode-alist '("\\.m\\'" . octave-mode))
(defun octave-mode-ess-bindings ()
     "Modify key bindings for octave-mode"
     (local-set-key (kbd "C-c C-j") 'octave-send-line)
     (local-set-key (kbd "C-c C-p") 'octave-send-block)
     (local-set-key (kbd "C-c C-r") 'octave-send-region)
     (local-set-key (kbd "C-c C-z") 'octave-show-process-buffer)
     (local-set-key (kbd "C-c C-q") 'octave-kill-process)
     )
(add-hook 'octave-mode-hook 'octave-mode-ess-bindings)

;; Alias for ascii
(define-coding-system-alias 'ascii 'us-ascii)

;; Set meta to command key on OSX
(when (eq system-type 'darwin)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'super))

;; Copy environment variables for OSX
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "PYTHONPATH"))

;; es-mode for Elasticsearch
(add-to-list 'auto-mode-alist '("\\.es$" . es-mode))

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; js2-jsx-mode and json-mode
(add-to-list 'auto-mode-alist '("\\.js$" . js2-jsx-mode))
(add-to-list 'auto-mode-alist '("\\.jsx$" . js2-jsx-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . json-mode))
(add-hook 'json-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)
            (setq-default tab-width 2)))
(add-hook 'js2-jsx-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)
            (setq-default tab-width 2)
            (setq js2-strict-missing-semi-warning nil)
            (setq js2-strict-trailing-comma-warning nil)))

;; magit-gitflow
;;; C-f in the magit status buffer invokes the magit-gitflow popup. If you
;;; would like to use a different key, set the magit-gitflow-popup-key variable
;;; before loading magit-gitflow
;; (setq magit-gitflow-popup-key "C-n")

(require 'magit-gitflow)
(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)
