;;; backspace
(global-set-key "\C-h" 'delete-backward-char)

;;; no backup/autosave
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/backup"))
            backup-directory-alist))

;; create auto-save file in ~/.emacs.d/backup
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "~/.emacs.d/backup/") t)))

;; delete eol space
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; no startup screen
(setq inhibit-startup-message t)
;; no menu-bar
(menu-bar-mode -1)

;; Cursor position
;;(line-number-mode t)
(column-number-mode t)

;; Smooth scroll
(setq scroll-step 1)
;; Kill with \n
(setq kill-whole-line t)
;; Goto line
(global-set-key "\M-g" 'goto-line)
;; indent space
(setq-default indent-tabs-mode nil)
;; highlight region
(setq transient-mark-mode t)
;; font-lock-mode
(global-font-lock-mode t)
;; Ignore capitalize
(setq read-file-name-completion-ignore-case t)

;; other window
(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))

(global-set-key (kbd "C-o") 'other-window-or-split)

(require 'tangotango-theme)
(load-theme 'tangotango t)
(custom-set-faces '(default ((t (:background "black")))))
