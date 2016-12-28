;;; This file init ace-window

(require 'ace-window)

(global-set-key (kbd "M-p") 'ace-window)
(global-set-key (kbd "C-x o") 'ace-window)

(setq aw-keys '(?a ?s ?d ?f ?g ?q ?w ?e ?r))

(provide 'init-ace-window)

;;; End;
