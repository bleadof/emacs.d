(use-package company-coq
  :requires proof-general-conf
  :config
  (progn
    (add-hook 'coq-mode-hook #'company-coq-initialize)
    (setq auto-mode-alist (cons '("\\.v$" . coq-mode) auto-mode-alist))))

(provide 'coq-mode-conf)
