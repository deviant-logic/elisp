;; interactive commands

(defun toggle-fullscreen ()
  "Switch emacs to display in full-screen mode; doesn't appear to be
terribly mac specific."
  (interactive)
  (set-frame-parameter nil 'fullscreen
                       (if (frame-parameter nil 'fullscreen)
                           nil
                         'fullboth)))

; curses-looking selector-bar thing
(defun hl-line-no-cursor ()
  "Make an interface-y looking line-based bar thing"
  (interactive)
  (hl-line-mode 1)
  (setq cursor-type nil))

(defun toggle-bol/bti ()
  "Move to beginning of line, or indentation if already there."
  (interactive)
  (if (bolp)
      (back-to-indentation)
      (move-beginning-of-line nil)))

(defun find-dot-emacs ()
  (interactive)
  (find-file "~/.emacs" t))

; twelf

(defun twelf-fontify-and-save-check-config ()
  (interactive)
  (twelf-font-fontify-buffer)
  (twelf-save-check-config))

(provide 'commands)