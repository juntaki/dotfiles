(require 'auto-complete)
(require 'auto-complete-config)
(require 'go-autocomplete)
(require 'fuzzy)
(ac-config-default)
(ac-set-trigger-key "TAB")
(setq ac-use-menu-map t)
(setq ac-use-fuzzy t)

(require 'cedet-devel-load)
(add-to-list 'ac-sources 'ac-source-semantic)
(add-to-list 'ac-sources 'ac-source-gtags)

(require 'semantic)
(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(semantic-mode 1)
;; Semantic
(global-semantic-decoration-mode t)
(global-semantic-highlight-func-mode t)
(global-semantic-show-unmatched-syntax-mode t)

(require 'yasnippet)
(yas-global-mode 1)
