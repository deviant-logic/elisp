;; darwin/osx specific configuration

; Emacs 23 transitioning

(when (> emacs-major-version 22)
  (setq ns-command-modifier 'meta))

(setq toggle-fullscreen-function 'ns-toggle-fullscreen)

;; (add-to-list
;;     'TeX-output-view-style
;;     '("^pdf$" "."
;;       "/Applications/Skim.app/Contents/SharedSupport/displayline %n %o %b"))

(provide 'darwin)