;; elisp function library (non-interactive)

(defun add-to-load-path (path)
  (add-to-list 'load-path path))

(defun add-to-load-path-recursively (dirname)
  (let ((default-directory (file-name-as-directory dirname)))
    (if (file-directory-p dirname)
        (normal-top-level-add-subdirs-to-load-path)
      (error "not a directory: %s" dirname))))

(defmacro add-to-auto-mode-alist (pat mode)
  `(add-to-list 'auto-mode-alist (cons ,pat ',mode)))

(defun ignore-extensions (&rest exts)
  (dolist (ext exts)
    (add-to-list 'completion-ignored-extensions ext)))

(defmacro add-hook* (hook form &rest forms)
  "Add a set of commands to `hook'."
  `(add-hook ',hook (lambda () ,form ,@forms)))

(provide 'elisp)