;; things I like from vi

(defvar tilfv-open-indents t
  "Modify the behavior of the tilfv-open-*-line functions to
   cause them to autoindent.")

; vi's o command
(defun tilfv-open-next-line (arg)
  "Move to the next line and then opens a line.
   See also `tilfv-open-indents'."
  (interactive "p")
  (end-of-line)
  (open-line arg)
  (next-line 1)
  (when tilfv-open-indents
    (indent-according-to-mode)))

; vi's O command
(defun tilfv-open-previous-line (arg)
  "Open a new line before the current one.
   See also `tilfv-open-indents'."
  (interactive "p")
  (beginning-of-line)
  (open-line arg)
  (when tilfv-open-indents
    (indent-according-to-mode)))

; vi-style join-line
(defun tilfv-join-line (arg)
  (interactive "P")
  (join-line (not arg)))

;; dot-mode

(autoload 'dot-mode "dot-mode" "Dot from vi" t)

; for the rest of the world

(define-minor-mode tilfv-mode
  "Toggle \"Things I Like From Vi\" mode."
  t            ;; initially on
  nil          ;; with no mode-line indicator
  `(("\C-o" . tilfv-open-next-line) ;; binding these keys
    (,(kbd "C-S-o") . tilfv-open-previous-line)
    ("\C-j" . tilfv-join-line))
  :global t)

(provide 'tilfv)