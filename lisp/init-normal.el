;;; This file do something about mode line and font

(require 'auto-save)
(auto-save-enable)
(setq auto-save-slient t)

(setq backup-by-copying t)
(setq backup-directory-alist '(("." . ".~")))
(setq delete-old-versions t)
(setq kept-new-version 6)
(setq kept-old-version 2)
(setq version-control t)

(set-default-font "-*-WenQuanYi Micro Hei Mono-normal-normal-normal-*-12-*-*-*-m-0-iso10646-1")

(setq default-frame-alist
      '((top    . 10)
	(left   . 42)
	(height . 60)
	(width  . 180)))

(require 'nlinum)
(defun my-nlinum-mode-hook ()
  (when nlinum-mode
    (setq-local nlinum-format
                (concat "%" (number-to-string
                             ;; Guesstimate number of buffer lines.
                             (ceiling (log (max 1 (/ (buffer-size) 80)) 10)))
                        "d"))))
(add-hook 'nlinum-mode-hook #'my-nlinum-mode-hook)
(defun initialize-nlinum (&optional frame)
  (require 'nlinum)
  (add-hook 'prog-mode-hook 'nlinum-mode))
(add-hook 'prog-mode-hook 'nlinum-mode)
(when (daemonp)
  (add-hook 'window-setup-hook 'initialize-nlinum)
  (defadvice make-frame (around toggle-nlinum-mode compile activate)
  (nlinum-mode -1) ad-do-it (nlinum-mode 1)))

(provide 'init-normal)

;;; End;
