;;; This file init something about macOS

;; Detect OS
(defvar macosx-p (string-match "darwin" (symbol-name system-type)))
 
;; osx fixes
(defun insert-hash ()
  (interactive)
  (insert "#"))
 
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell
	 (shell-command-to-string "$SHELL -i -c 'echo $PATH'")))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(when macosx-p
  (global-set-key "\263" 'insert-hash)
  (set-exec-path-from-shell-PATH))

(provide 'init-macos)

;;; End;
