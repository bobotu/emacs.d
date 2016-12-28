;;; This file init chinese-pyim

(require 'chinese-pyim)
(require 'chinese-pyim-greatdict)

(chinese-pyim-greatdict-enable)

(setq default-input-method "chinese-pyim")
(setq pyim-default-scheme 'quanpin)

;; 设置 pyim 探针设置，可以实现 *无痛* 中英文切换 :-)
(setq-default pyim-english-input-switch-functions
              '(pyim-probe-dynamic-english
              pyim-probe-isearch-mode
              pyim-probe-program-mode
	      pyim-probe-org-structure-template))

(setq-default pyim-punctuation-half-width-functions
              '(pyim-probe-punctuation-line-beginning
              pyim-probe-punctuation-after-punctuation))

;; 开启拼音搜索功能
(setq pyim-isearch-enable-pinyin-search t)

;; 使用 pupup-el 来绘制选词框
(setq pyim-use-tooltip 'pos-tip)

;; 选词框显示5个候选词
(setq pyim-page-length 5)

;; 让 Emacs 启动时自动加载 pyim 词库
(add-hook 'emacs-startup-hook
	  #'(lambda () (pyim-restart-1 t)))

(setq pyim-backends '(dcache-personal dcache-common pinyin-chars))

(global-set-key (kbd "C-\\") 'pyim-convert-code-at-point)
(global-set-key (kbd "C-x \\") 'toggle-input-method)

(setq pyim-guidance 'pyim-guidance:one-line)

(provide 'init-pyim)

;;; End;
