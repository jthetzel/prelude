;; Set tabs to two spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)

;; Initialize packages
(package-initialize)

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
  (setq tab-width 2)
  (setq python-indent-offset 2)
  (setq py-indent-offset 2))
(add-hook 'python-mode-hook 'python-custom-settings)

;; org-mode
(setq org-startup-truncated)

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


