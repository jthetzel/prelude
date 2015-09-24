;; Set tabs to two spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)

;; Initialize packages
(package-initialize)
;(elpy-enable)

;; emacs speaks statistics
(ess-toggle-underscore 'nil)
(setq ess-fancy-comments 'nil)
(setq ess-tab-complete-in-script t)

;; org-mode
(setq truncate-lines 'nil)

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
