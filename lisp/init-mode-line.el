;;; This file init mode line

(tool-bar-mode -1)

(set-face-attribute 'mode-line nil :underline nil)

(require 'nyan-mode)
(nyan-start-animation)
(setq nyan-wavy-trail t)
(setq nyan-bar-length 15)
(scroll-bar-mode -1)

(defvar prog-mode-line-format '(" %b "
			        "%* "
			        "%p "
			        (:eval (list (nyan-create)))
			        (vc-mode vc-mode)
				" "
			        mode-line-modes))
(setq-default mode-line-format prog-mode-line-format)

(provide 'init-mode-line)

;; End;
