(require 'cc-mode)

(require 'dtrt-indent)
(dtrt-indent-mode 1)
(setq dtrt-indent-verbosity 0)

(require 'autopair)
(autopair-global-mode 1)
(setq autopair-autowrap t)

;; http://futurismo.biz/archives/3071
(require  'projectile)
(projectile-global-mode)

(require 'c-eldoc)
(add-hook 'c-mode-hook 'c-turn-on-eldoc-mode)
(add-hook 'c++-mode-hook 'c-turn-on-eldoc-mode)
(setq c-eldoc-buffer-regenerate-time 60)

(require 'function-args)
(fa-config-default)
(define-key c-mode-map (kbd "M-o")  'fa-show)
(define-key c++-mode-map (kbd "M-o")  'fa-show)
