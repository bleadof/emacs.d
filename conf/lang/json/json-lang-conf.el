(defun json-setup ()
  (interactive)
  (web-mode)
  (prettier-js-mode))

(use-package web-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.json$" . json-setup)))

(provide 'json-lang-conf)
