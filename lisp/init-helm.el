;;; This file init helm

(require 'helm-config)
(require 'helm-ls-git)

(helm-mode 1)
(define-key global-map [remap find-file] 'helm-find-files)
(define-key global-map [remap occur] 'helm-occur)
(define-key global-map [remap list-buffers] 'helm-buffers-list)
(define-key global-map [remap dabbrev-expand] 'helm-dabbrev)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-d") 'helm-browse-project)

(provide 'init-helm)

;;; End;
