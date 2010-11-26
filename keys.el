;; keys.el -- my key bindings

; global bindings

(global-set-key "\M-p" (lambda () (interactive) (scroll-down 1)))
(global-set-key "\M-n" (lambda () (interactive) (scroll-up   1)))
(global-set-key (kbd "M-<RET>") 'toggle-fullscreen)
(global-set-key "\C-a" 'toggle-bol/bti)

(global-set-key "\M-'" 'insert-pair) ; see also `parens-require-spaces'
(global-set-key "\M-[" 'insert-pair)
(global-set-key "\M-\"" 'insert-pair)

; personal bindings

(defun ctl-c (s def)
  (define-key mode-specific-map s def))

(ctl-c "s" 'run-scheme)
(ctl-c "j" 'shell)
(ctl-c "m" 'compile)
(ctl-c "l" 'goto-line)

; org-mode

(ctl-c "a" 'org-agenda)
(ctl-c "b" 'org-iswitchb)
(ctl-c "r" 'org-remember)

; slightly more fancifully

(ctl-c "." 'find-dot-emacs)

; mode-specific bindings (not to be confused with mode-specific-map)

(eval-after-load 'paredit
  '(progn
     (define-key paredit-mode-map ")"   'paredit-close-parenthesis)
     (define-key paredit-mode-map "\C-j" 'tilfv-join-line)))
(eval-after-load 'twelf-mode
  '(define-key twelf-mode-map (kbd "C-c C-c")
     'twelf-fontify-and-save-check-config))

(provide 'keys)