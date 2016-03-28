;; el-get
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; el-get bundles
;; general
(el-get-bundle dash)
(el-get-bundle elpa:popup)
(el-get-bundle elpa:auto-complete)
(el-get-bundle elpa:yasnippet)
(el-get-bundle elpa:anzu)
(el-get-bundle elpa:multiple-cursors)
(el-get-bundle elpa:helm)
(el-get-bundle elpa:helm-gtags)
(el-get-bundle elpa:init-loader)
(el-get-bundle elpa:flycheck)
(el-get-bundle elpa:flycheck-pos-tip)
(el-get-bundle elpa:flycheck-color-mode-line)
(el-get-bundle elpa:tangotango-theme)
(el-get-bundle elpa:hc-zenburn-theme)
(el-get-bundle elpa:projectile)
(el-get-bundle elpa:fuzzy)
(el-get-bundle cedet)

;; go
(el-get-bundle go-mode)
(el-get-bundle go-autocomplete)

;; C
(el-get-bundle dtrt-indent)
(el-get-bundle auto-complete-clang-async)
(el-get-bundle auto-complete-c-headers)
(el-get-bundle clang-complete-async)
(el-get-bundle elpa:function-args)
(el-get-bundle elpa:c-eldoc)
(el-get-bundle elpa:autopair)

;; ruby
(el-get-bundle elpa:robe)
(el-get-bundle elpa:rinari)
(el-get-bundle elpa:rubocop)
(el-get-bundle elpa:ruby-electric)
(el-get-bundle elpa:ruby-block)
(el-get-bundle elpa:enh-ruby-mode)

;; markdown
(el-get-bundle elpa:markdown-mode)

;; web
(el-get-bundle elpa:web-mode)
(el-get-bundle js2-mode)
(el-get-bundle nodejs-repl)
(el-get-bundle coffee-mode)

(package-initialize)

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
